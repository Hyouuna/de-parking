<?php

namespace App\Filament\Resources\Transactions\Pages;

use App\Filament\Resources\Transactions\TransactionResource;
use App\Models\Ticket;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class CreateTransaction extends CreateRecord
{
    protected static string $resource = TransactionResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $ticket = Ticket::with(['vehicle', 'parkingArea', 'parkingRate'])
            ->find($data['ticket_id']);

        if (!$ticket) {
            throw new \Exception('Ticket tidak ditemukan');
        }

        if ($ticket->status !== 'in') {
            throw new \Exception('Ticket sudah tidak aktif');
        }

        // ❗ ambil data asli dari ticket (override input form)
        $timeOut = now();
        $timeIn = Carbon::parse($ticket->time_in);

        // 🔥 hitung ulang (biar aman dari manipulasi)
        $duration = ceil($timeIn->diffInMinutes($timeOut) / 60);
        $duration = max($duration, 1);

        $rate = $ticket->parkingRate->rate_per_hour ?? 0;
        $total = $duration * $rate;

        // 🔥 paksa isi sesuai ticket
        $data['user_id'] = Auth::id();

        $data['vehicle_id'] = $ticket->vehicle_id;
        $data['parking_rate_id'] = $ticket->parking_rate_id;
        $data['parking_area_id'] = $ticket->parking_area_id;

        $data['time_in'] = $timeIn;
        $data['time_out'] = $timeOut;

        $data['duration_time'] = $duration;
        $data['total_rate'] = $total;

        return $data;
    }

    protected function afterCreate(): void
    {
        DB::transaction(function () {

            $ticket = $this->record->ticket;

            if ($ticket->status === 'in') {

                // 🔥 update ticket
                $ticket->update([
                    'status' => 'out',
                    'time_out' => now(),
                ]);

                // 🔥 balikin slot parkir
                $area = $ticket->parkingArea;

                if ($area && $area->used_slots > 0) {
                    $area->decrement('used_slots');
                    $area->increment('capacity');
                }
            }
        });
    }
}
