<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Union extends Model {

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table    = 'unions';
    protected $fillable = ['upazilla_id', 'name', 'bn_name', 'status'];

    public function upazila() {
        return $this->belongsTo(Upazila::class);
    }

}
