<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Route extends Model
{
    protected $table = 'route';
    protected $primaryKey = 'routeid';
    public $timestamps = true;

    protected $fillable = [
        'busid',
        'start_location',
        'end_location',
        'distance',
        'estimated_time'
    ];

    public function bus()
    {
        return $this->belongsTo(Bus::class, 'busid');
    }
}
