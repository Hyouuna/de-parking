<?php

namespace App\Filament\Resources\Tickets\Schemas;

use App\Models\ParkingRate;
use Carbon\Carbon;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Select;
use Filament\Schemas\Schema;
use Illuminate\Support\Facades\Auth;

class TicketForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([

                Select::make('user_id')
                    ->required()
                    ->label('Verified By')
                    ->relationship('user', 'name')
                    ->default(Auth::id())
                    ->dehydrated(),

                Select::make('vehicle_id')
                    ->required()
                    ->label('Plate Number')
                    ->relationship('vehicle', 'plat_number')
                    ->getOptionLabelFromRecordUsing(function ($record) {
                        $typeLabel = match ($record->vehicle_type) {
                            'motorcycle' => 'Motorcycle',
                            'car' => 'Car',
                            default => 'Unknown',
                        };

                        return "{$record->plat_number} ({$typeLabel})";
                    }),

                Select::make('parking_rate_id')
                    ->required()
                    ->label('Area Code')
                    ->options(
                        ParkingRate::with('parkingArea')
                            ->get()
                            ->mapWithKeys(fn($rate) => [
                                $rate->id => $rate->code . ' (Rp ' . number_format($rate->rate_per_hour, 0, ',', '.') . ')'
                            ])
                    )
                    ->reactive()
                    ->afterStateUpdated(function ($state, callable $set) {
                        $rate = ParkingRate::find($state);
                        if (!$rate) return;

                        $set('parking_area_id', $rate->parking_area_id);
                    }),
                Hidden::make('parking_area_id'),

                DateTimePicker::make('time_in')
                    ->required()
                    ->default(now()),

                Select::make('status')
                    ->options(['in' => 'In', 'out' => 'Out'])
                    ->default('in')
                    ->required(),
            ]);
    }
}
