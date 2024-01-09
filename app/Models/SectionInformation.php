<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SectionInformation extends Model
{
    use SoftDeletes;

    protected $table = 'section_informations';
}
