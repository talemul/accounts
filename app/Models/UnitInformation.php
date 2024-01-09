<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UnitInformation extends Model
{
    use SoftDeletes;

    protected $table = 'unit_informations';
}
