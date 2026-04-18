<?php

namespace App\Filament\Resources\Transactions\Schemas;

use Carbon\Carbon;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;
use Illuminate\Support\Facades\Auth;

class TransactionForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('ticket_id')
                    ->required()
                    ->reactive()
                    ->label('Ticket Code')
                    ->relationship('ticket', 'ticket_code', fn($query) => $query->where('status', 'in'))
                    ->live()
                    ->afterStateUpdated(function ($state, callable $set) {

                        $ticket = \App\Models\Ticket::with(['vehicle', 'parkingArea', 'parkingRate'])
                            ->find($state);

                        if (!$ticket) return;

                        // 🔥 isi semua field dari ticket
                        $set('vehicle_id', $ticket->vehicle_id);
                        $set('parking_rate_id', $ticket->parking_rate_id);
                        $set('parking_area_id', $ticket->parking_area_id);
                        $set('time_in', $ticket->time_in);

                        // 🔥 hitung otomatis
                        $timeOut = now();
                        $timeIn = \Carbon\Carbon::parse($ticket->time_in);

                        $duration = ceil($timeIn->diffInMinutes($timeOut) / 60);
                        $duration = max($duration, 1);

                        $rate = $ticket->parkingRate->rate_per_hour ?? 0;
                        $total = $duration * $rate;

                        $set('time_out', $timeOut);
                        $set('duration_time', $duration);
                        $set('total_rate', $total);
                    }),
                Select::make('user_id')
                    ->required()
                    ->label('Verified By')
                    ->relationship('user', 'name')
                    ->default(Auth::id())
                    ->dehydrated(),
                Select::make('vehicle_id')
                    ->required()
                    ->label('plat_number')
                    ->relationship('vehicle', 'plat_number'),
                Select::make('parking_rate_id')
                    ->required()
                    ->label('parking_rate_id')
                    ->relationship('parkingRate', 'rate_per_hour'),
                Select::make('parking_area_id')
                    ->required()
                    ->label('parking_area_id')
                    ->relationship('parkingArea', 'code'),
                DateTimePicker::make('time_in')
                    ->required(),
                DateTimePicker::make('time_out')
                    ->required()
                    ->default(Carbon::now()),
                TextInput::make('duration_time')
                    ->required()
                    ->numeric(),
                TextInput::make('total_rate')
                    ->required()
                    ->numeric(),
            ]);
    }
}
