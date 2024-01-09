<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BuildingInformation extends Model
{
    use SoftDeletes;

    protected $table = 'building_informations';
}
