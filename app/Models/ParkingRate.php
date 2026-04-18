<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class ParkingRate extends Model
{
    use LogsActivity;

    public function getActivityLogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logAll()
            ->logOnlyDirty();
    }
    protected $fillable = [
        'parking_area_id',
        'vehicle_type',
        'rate_per_hour',
        'is_active',
    ];
    public function parkingArea()
    {
        return $this->belongsTo(ParkingArea::class);
    }

    public function tickets()
    {
        return $this->hasMany(Ticket::class);
    }

    public function transactions()
    {
        return $this->hasMany(Transaction::class);
    }

    public function getCodeAttribute()
    {
        $vehicleCode = match ($this->vehicle_type) {
            'motorcycle' => 'M',
            'car' => 'C',
            default => 'X',
        };

        return $this->parkingArea->code . '-' . $vehicleCode;
    }
}
