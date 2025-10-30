<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bus extends Model
{
    protected $table = 'bus';
    protected $primaryKey = 'busid';
    public $timestamps = true;

    protected $fillable = [
        'busname',
        'busnumber',
        'capacity',
        'status'
    ];

    public function routes()
    {
        return $this->hasMany(Route::class, 'busid');
    }

    public function tracks()
    {
        return $this->hasMany(Track::class, 'busid');
    }
}
