<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Wallet extends Model
{
    protected $table = 'wallet';
    protected $primaryKey = 'walletid';
    public $timestamps = true;

    protected $fillable = [
        'userid',
        'balance'
    ];

    public function passenger()
    {
        return $this->belongsTo(Passenger::class, 'userid');
    }

    public function topups()
    {
        return $this->hasMany(Topup::class, 'walletid');
    }

    public function histories()
    {
        return $this->hasMany(History::class, 'walletid');
    }
}
