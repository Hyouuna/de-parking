<?php

namespace App\Filament\Resources\Vehicles\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\ActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\Layout\Grid;
use Filament\Tables\Columns\Layout\Stack;
use Filament\Tables\Table;

class VehiclesTable
{
    public static function configure(Table $table): Table
    {
        return $table

        ->contentGrid([
            'xl' => 4,
            'lg' => 3,
            'md' => 2,
        ])
            ->columns([
                Grid::make([
                    'default' => 1,
                ])->schema([
                    Stack::make([
                        ImageColumn::make('image')
                            ->label('Image'),
                        TextColumn::make('owner_name')
                                ->searchable()
                                ->label('Customer Name'),
                    ])
                ]),
                TextColumn::make('plat_number')
                    ->searchable()
                    ->label('Plat Number'),
                TextColumn::make('vehicle_type')
                    ->searchable()
                    ->label('Vehicle Type'),
                TextColumn::make('color')
                    ->searchable(),
                TextColumn::make('is_active')
                    ->badge()
                    ->formatStateUsing(fn($state) => $state ?  'active' : 'inactive')
                    ->color(fn($state) => $state ? 'success' : 'danger'),
                TextColumn::make('user.name')
                    ->label('Staff Name')
                    ->sortable(),
                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                    ])
                    ->filters([
                //
            ])
            ->recordActions([
                    ViewAction::make(),
                    EditAction::make(),
                    DeleteAction::make(),
                ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
