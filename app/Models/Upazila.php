<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Upazila extends Model {

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table    = 'upazilas';
    protected $fillable = ['district_id', 'name', 'bn_name', 'status'];

    public function district() {
        return $this->belongsTo(District::class);
    }

}
