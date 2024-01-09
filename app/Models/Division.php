<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Division extends Model {

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table    = 'divisions';
    protected $fillable = ['name', 'bn_name'];

}
