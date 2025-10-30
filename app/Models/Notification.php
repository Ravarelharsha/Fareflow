<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    protected $table = 'notification';
    protected $primaryKey = 'notificationid';
    public $timestamps = true;

    protected $fillable = [
        'userid',
        'title',
        'message',
        'status'
    ];

    public function passenger()
    {
        return $this->belongsTo(Passenger::class, 'userid');
    }
}
