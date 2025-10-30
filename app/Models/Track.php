<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Track extends Model
{
    protected $table = 'track';
    protected $primaryKey = 'trackid';
    public $timestamps = true;

    protected $fillable = [
        'busid',
        'latitude',
        'longitude',
        'timestamp'
    ];

    public function bus()
    {
        return $this->belongsTo(Bus::class, 'busid');
    }
}
