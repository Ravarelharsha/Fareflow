<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Passenger extends Model
{
        protected $table = 'passenger';
    protected $primaryKey = 'userid';
    protected $fillable = ['fullname', 'birthdate', 'email', 'phone', 'city', 'province'];

    public function wallet()
    {
        return $this->hasOne(Wallet::class, 'userid');
    }

    public function cards()
    {
        return $this->hasMany(Card::class, 'userid');
    }

    public function histories()
    {
        return $this->hasMany(History::class, 'userid');
    }

    public function topups()
    {
        return $this->hasMany(Topup::class, 'userid');
    }
}
