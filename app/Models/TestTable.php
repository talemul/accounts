<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TestTable extends Model
{
    use SoftDeletes;

    protected $table = 'test_table';

    public function getColumnNameAttribute($value)
    {
        return array_values(json_decode($value, true) ?: []);
    }

    public function setColumnNameAttribute($value)
    {
        $this->attributes['column_name'] = json_encode(array_values($value));
    }
}
