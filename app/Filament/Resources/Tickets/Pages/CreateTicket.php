<?php

namespace App\Filament\Resources\Tickets\Pages;

use App\Filament\Resources\Tickets\TicketResource;
use App\Models\ParkingArea;
use App\Models\Vehicle;
use Filament\Resources\Pages\CreateRecord;

class CreateTicket extends CreateRecord
{
    protected static string $resource = TicketResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $parkingArea = ParkingArea::find($data['parking_area_id']);
        $vehicle = Vehicle::find($data['vehicle_id']);

        $areaCode = $parkingArea?->code ?? 'XX';
        $timeCode = now()->format('Hi');

        $vehicleCode = match ($vehicle?->vehicle_type) {
            'motorcycle' => 'M',
            'car' => 'C',
            default => 'X',
        };

        $data['ticket_code'] = "{$areaCode}-{$timeCode}-{$vehicleCode}";

        return $data;
    }
    protected function afterCreate(): void
    {
        $ticket = $this->record;

        if ($ticket->status === 'in') {

            $area = $ticket->parkingArea;

            if ($area) {
                $area->increment('used_slots');
                $area->decrement('capacity');
            }
        }
    }
}
