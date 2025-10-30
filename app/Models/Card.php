<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Card extends Model
{
    protected $table = 'card';
    protected $primaryKey = 'cardid';
    public $timestamps = true;

    protected $fillable = [
        'userid',
        'cardnumber',
        'issuedate',
        'expirydate'
    ];

    public function passenger()
    {
        return $this->belongsTo(Passenger::class, 'userid');
    }
}
