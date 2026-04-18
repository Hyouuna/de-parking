<?php

namespace App\Filament\Resources\Transactions\Schemas;

use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class TransactionInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('user_id')
                    ->numeric(),
                TextEntry::make('vehicle_id')
                    ->numeric(),
                TextEntry::make('parking_rate_id')
                    ->numeric(),
                TextEntry::make('parking_area_id')
                    ->numeric(),
                TextEntry::make('ticket_id')
                    ->numeric(),
                TextEntry::make('time_out')
                    ->dateTime(),
                TextEntry::make('duration_time')
                    ->numeric(),
                TextEntry::make('total_rate')
                    ->numeric(),
                TextEntry::make('created_at')
                    ->dateTime()
                    ->placeholder('-'),
                TextEntry::make('updated_at')
                    ->dateTime()
                    ->placeholder('-'),
            ]);
    }
}
