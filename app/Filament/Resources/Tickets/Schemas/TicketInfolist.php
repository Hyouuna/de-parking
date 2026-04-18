<?php

namespace App\Filament\Resources\Tickets\Schemas;

use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class TicketInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('ticket_code'),
                TextEntry::make('user_id')
                    ->numeric(),
                TextEntry::make('vehicle_id')
                    ->numeric(),
                TextEntry::make('parking_rate_id')
                    ->numeric(),
                TextEntry::make('parking_area_id')
                    ->numeric(),
                TextEntry::make('time_in')
                    ->dateTime(),
                TextEntry::make('time_out')
                    ->dateTime()
                    ->placeholder('-'),
                TextEntry::make('status')
                    ->badge(),
                TextEntry::make('created_at')
                    ->dateTime()
                    ->placeholder('-'),
                TextEntry::make('updated_at')
                    ->dateTime()
                    ->placeholder('-'),
            ]);
    }
}
