<?php

namespace App\Filament\Resources\Tickets\Tables;

use Filament\Actions\Action;
use Filament\Actions\BulkActionGroup;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Barryvdh\DomPDF\Facade\Pdf;

class TicketsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('ticket_code')
                    ->searchable(),
                TextColumn::make('user_id')
                    ->numeric(),
                TextColumn::make('vehicle_id')
                    ->numeric(),
                TextColumn::make('parking_rate_id')
                    ->numeric(),
                TextColumn::make('parking_area_id')
                    ->numeric(),
                TextColumn::make('time_in')
                    ->dateTime()
                    ->searchable()
                    ->sortable(),
                TextColumn::make('time_out')
                    ->dateTime()
                    ->searchable()
                    ->sortable(),
                TextColumn::make('status')
                    ->badge()
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

                Action::make('print')
                    ->label('Print PDF')
                    ->icon('heroicon-o-printer')
                    ->visible(fn($record) => $record->status === 'in')
                    ->action(function ($record) {

                        $pdf = Pdf::loadView('pdf.ticket', [
                            'ticket' => $record
                        ])
                            ->setPaper([0, 0, 226.77, 800]); // 🔥 ukuran thermal 80mm

                        return response()->streamDownload(
                            fn() => print($pdf->output()),
                            'ticket-' . $record->ticket_code . '.pdf'
                        );
                    }),
            ])
            ->toolbarActions([
                BulkActionGroup::make([]),
            ]);
    }
}
