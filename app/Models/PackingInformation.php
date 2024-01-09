<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PackingInformation extends Model
{
    use SoftDeletes;

    protected $table = 'packing_informations';
}
