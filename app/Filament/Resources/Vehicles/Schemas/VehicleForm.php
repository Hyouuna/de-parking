<?php

namespace App\Filament\Resources\Vehicles\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class VehicleForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
        ->components([
            FileUpload::make('image')
                    ->image(),
                TextInput::make('owner_name')
                    ->required()
                    ->label('Owner'),
                TextInput::make('plat_number')
                    ->label('Plate Number')
                    ->default(null),
                 Select::make('vehicle_type')
                    ->options([
                        'car' => 'Car',
                        'motorcycle' => 'Motorcycle',
                    ])
                    ->required(),
                Select::make('color')
                    ->options([
                        'blue' => 'Blue',
                        'red' => 'Red',
                        'black' => 'Black',
                        'yellow' => 'Yellow',
                        'green' => 'Green',
                        'white' => 'White',
                        'grey' => 'Grey',
                    ])
                    ->required(),
                    Select::make('user_id')
                        ->label('Staff Name')
                        ->relationship('user','name')
                        ->default(null),
            ]);
    }
}
