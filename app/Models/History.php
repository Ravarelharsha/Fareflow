<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class History extends Model
{
    protected $table = 'history';
    protected $primaryKey = 'historyid';
    public $timestamps = true;

    protected $fillable = [
        'userid',
        'walletid',
        'amount',
        'transaction_type',
        'transaction_date'
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
