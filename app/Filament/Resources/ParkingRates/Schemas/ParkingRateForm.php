<?php

namespace App\Filament\Resources\ParkingRates\Schemas;

use App\Models\ParkingArea;
use Filament\Forms\Components\Placeholder;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class ParkingRateForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('parking_area_id')
                    ->required()
                    ->label('Parking Area')
                    ->relationship('parkingArea', 'code')
                    ->reactive(),
                Select::make('vehicle_type')
                    ->required()
                    ->options([
                        'car' => 'Car',
                        'motorcycle' => 'Motorcycle'
                    ])
                    ->reactive(),

                Placeholder::make('code_preview')
                    ->label('Code')
                    ->content(function ($get) {
                        $areaId = $get('parking_area_id');
                        $vehicleType = $get('vehicle_type');

                        if (!$areaId || !$vehicleType) return '-';

                        $area = ParkingArea::find($areaId);

                        $vehicleCode = match ($vehicleType) {
                            'motorcycle' => 'M',
                            'car' => 'C',
                            default => 'X',
                        };

                        return $area?->code . '-' . $vehicleCode;
                    }),

                TextInput::make('rate_per_hour')
                    ->required()
                    ->numeric(),
            ]);
    }
}
