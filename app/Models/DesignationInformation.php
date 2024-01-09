<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DesignationInformation extends Model
{
    use SoftDeletes;

    protected $table = 'designation_informations';
}
