<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ChartOfAccount extends Model
{
    use SoftDeletes;
    protected $table = 'chart_of_accounts';
    public function project()
    {
        return $this->belongsTo(ProjectInformation::class,'project_id');
    }
}
