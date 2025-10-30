<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Helpcenter extends Model
{
    protected $table = 'helpcenter';
    protected $primaryKey = 'helpid';
    public $timestamps = true;

    protected $fillable = [
        'userid',
        'subject',
        'message',
        'status'
    ];

    public function passenger()
    {
        return $this->belongsTo(Passenger::class, 'userid');
    }
}
