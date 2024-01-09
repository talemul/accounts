<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ShiftInformation extends Model
{
    use SoftDeletes;

    protected $table = 'shift_informations';
}
