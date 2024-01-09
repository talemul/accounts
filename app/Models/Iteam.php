<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Iteam extends Model
{
    use SoftDeletes;
    protected $table = 'iteams';
    public function project()
    {
        return $this->belongsTo(ProjectInformation::class,'project_id');
    }
    public function packing()
    {
        return $this->belongsTo(PackingInformation::class,'packing_id');
    }
    public function unit()
    {
        return $this->belongsTo(UnitInformation::class,'unit_id');
    }
    public function size()
    {
        return $this->belongsTo(SizeInformation::class,'size_id');
    }
}
