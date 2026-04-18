<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    protected $fillable = [

        'user_id',
        'vehicle_id',
        'parking_rate_id',
        'parking_area_id',
        'ticket_id',
        'time_in',
        'time_out',
        'duration_time',
        'total_rate',

    ];

    public function parkingArea()
    {
        return $this->belongsTo(ParkingArea::class);
    }
    public function parkingRate()
    {
        return $this->belongsTo(ParkingRate::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function vehicle()
    {
        return $this->belongsTo(Vehicle::class);
    }
    public function ticket()
    {
        return $this->belongsTo(Ticket::class);
    }
}
