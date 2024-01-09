<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AccountTransaction extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = 'account_transactions';
    protected $fillable = ['project_id', 'transaction_type', 'voucher_no', 't_narration', 'is_synchronized', 'organization_ref_id', 'user_ref_id', 'role_ref_id', 'created_by', 'updated_by'];

    public function details()
    {
        return $this->hasMany(AccountTransactionDetail::class, 'account_transaction_id');
    }

}
