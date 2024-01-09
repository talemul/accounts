<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AccountTransactionDetail extends Model
{
	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $table = 'account_transaction_details';
	protected $fillable = ['account_transaction_id','chart_of_accounts_id','accounts_id','d_amount','c_amount','is_synchronized','organization_ref_id','user_ref_id','role_ref_id','created_by','updated_by'];


}
