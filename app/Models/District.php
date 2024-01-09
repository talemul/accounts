<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class District extends Model {

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table    = 'districts';
    protected $fillable = ['division_id', 'name', 'bn_name', 'status'];

    public function division() {
        return $this->belongsTo(Division::class);
    }

}
