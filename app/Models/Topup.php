<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Topup extends Model
{
    protected $table = 'topup';
    protected $primaryKey = 'topupid';
    public $timestamps = true;

    protected $fillable = [
        'userid',
        'walletid',
        'amount',
        'method',
        'date'
    ];

    public function passenger()
    {
        return $this->belongsTo(Passenger::class, 'userid');
    }

    public function wallet()
    {
        return $this->belongsTo(Wallet::class, 'walletid');
    }
}
