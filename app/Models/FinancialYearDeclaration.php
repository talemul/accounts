<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FinancialYearDeclaration extends Model
{
	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $table = 'financial_year_declarations';
	protected $fillable = ['date_from','date_to','project_id','status','is_synchronized','organization_ref_id','user_ref_id','role_ref_id','created_by','updated_by'];
	
	
}