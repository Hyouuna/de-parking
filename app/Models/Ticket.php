<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    protected $fillable = [

        'ticket_code',
        'user_id',
        'vehicle_id',
        'parking_rate_id',
        'parking_area_id',
        'time_in',
        'time_out',
        'status',
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

    public function transaction()
    {
        return $this->hasOne(Transaction::class);
    }
}
