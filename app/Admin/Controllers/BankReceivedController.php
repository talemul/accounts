<?php

namespace App\Admin\Controllers;

use App\Models\AccountTransaction;
use App\Models\VChartOfAccountChild;


use App\Models\ChartOfAccount;
use App\Models\ProductForm;
use App\Models\ProjectInformation;
use App\Repositories\DotlineCommon;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Auth\Database\Administrator;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Row;
use Encore\Admin\Widgets\Box;
use Encore\Admin\Layout\Content;

class BankReceivedController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = "Bank Received";

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {

        $form = new Form(new AccountTransaction);
        $account_transaction_id = (request()->route()->parameter("account_transaction")) ? request()->route()->parameter("account_transaction") : "";
        $voucher_no = '';
        if ($account_transaction_id) {
            $account_transactioninfo = AccountTransaction::find($account_transaction_id);
            DB::statement("update account_transaction_details set is_synchronized=1 where account_transaction_id = " . $account_transaction_id . "; ");
            $voucher_no = $account_transactioninfo->transaction_type . '-' . $account_transactioninfo->voucher_no;
        }
        //  $form->display("id", "ID");
        $arr_project_information = array();
        $project_information = ProjectInformation::all();

        foreach ($project_information as $key => $value) {
            if ($value['id'] != 0)
                $arr_project_information[$value['id']] = $value['name'];
        }
        $form->date("voucher_date", __("Voucher Date"))->attribute(["onblur" => "load_deafult_rows()"]);
        $form->select("project_id", __("Project Name"))->options($arr_project_information)->required();
        // $form->text("project_id", __("Project ID"));
        $form->hidden("transaction_type", __("Transaction Type"))->default('BR')->readonly();
        if ($account_transaction_id) {
            $form->html(' ' . $voucher_no . ' ', 'Voucher No');
        }

        $form->hidden("voucher_no", __("Voucher No"))->default(1);
// Subtable fields
        $arr_chart_of_account = array();
      /*  $chart_of_account = VChartOfAccountChild::where('code','not like','5%')->get();
        // dd($chart_of_account);
        foreach ($chart_of_account as $key => $value) {
            if ($value['id'] != 0)
                $arr_chart_of_account[$value['id']] = $value['origin'];
        }*/
        $chart_of_account= get_chart_of_account_data();
        foreach ($chart_of_account as $key => $value) {
            if ($value->id != 0){
                if($value->project_id==Admin::user()->project_id && substr($value->code, 0, 1)!='6'){
                    $arr_chart_of_account[$value->id] = $value->origin;
                }
            }
        }
        $form->table('details', function ($table) use ($arr_chart_of_account) {
            $table->select("chart_of_accounts_id", __("Head of Accounts"))->options($arr_chart_of_account)->attribute([ "onchange" => "cash_at_bank_for_debit(this);"]);
            $table->textarea("d_amount", __("Debit Amount"))->rows(1)->attribute(["onblur" => "calculate_sum_footer_table()", "onkeyup" => "number_validation_for_input(this);"]);
            $table->textarea("c_amount", __("Credit Amount"))->rows(1)->attribute(["onblur" => "calculate_sum_footer_table()", "onkeyup" => "number_validation_for_input(this);"]);
            // $table->textarea("accounts_id", __(""))->rows(1)->default(5);
        });
        $form->textarea("t_narration", __("Transaction Narration"))->required()->rows(2);
        $form->hidden("organization_ref_id")->default(Admin::user()->organization_ref_id);
        $form->hidden("user_ref_id")->default(Admin::user()->user_ref_id);
        $form->hidden("role_ref_id")->default(Admin::user()->role_ref_id);
        $form->hidden("created_by")->default(Admin::user()->id);
        $form->hidden("updated_by")->default(Admin::user()->id);
        $form->saved(function (Form $form) {
            $id = $form->model()->id;
            $account_transactioninfo = AccountTransaction::find($id);
            $account_transactioninfo->voucher_no = AccountTransaction::
            where('transaction_type', '=', 'BR')
                ->where('project_id', '=', $account_transactioninfo->project_id)->count();
            $account_transactioninfo->save();
            DB::statement("delete from account_transaction_details where account_transaction_id = " . $id . " and is_synchronized=1; ");
        });
        return $form;
    }


    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new AccountTransaction);

        $grid->column("id", __("Id"))->sortable();
        // $grid->column("project_id", __("Project ID"));
        $grid->column('Project Name')->display(function () {
            $project_name = ProjectInformation::find($this->project_id);
            $val = '';
            if ($project_name) {
                $val = $project_name->name;
            }
            return $val;
        })->sortable();

        $grid->column("transaction_type", __("Transaction Type"))->sortable();;
        $grid->column("voucher_no", __("Voucher No"));
        $grid->column("voucher_date", __("Voucher No"))->date('Y-M-d')->sortable();;
        $grid->column("t_narration", __("Transaction Narration"));

        //except super user
        $gridquery = $grid->model();


        /*        if (Admin::user()->organization_id != 1) {
                    if (Admin::user()->account_type == "system") {
                        $gridquery->where("organization_ref_id", "like", Admin::user()->organization_ref_id . "%");
                    } elseif (Admin::user()->account_type == "business") {
                        $gridquery->where("user_ref_id", "like", Admin::user()->user_ref_id . "%");
                    }
                }*/

        $grid->actions(function ($actions) {
            /* $productFormSettings = ProductForm::where("model_name", "AccountTransaction")->first();
             if (!empty($productFormSettings)) {
                 $gridSetting = $productFormSettings->grid_action_btn;
                 if (!empty($gridSetting)) {
                     if (!in_array("view", $gridSetting)) {
                         $actions->disableView();
                     }
                     if (!in_array("edit", $gridSetting)) {
                         $actions->disableEdit();
                     }
                     if (!in_array("delete", $gridSetting)) {
                         $actions->disableDelete();
                     }
                     if (in_array("buy_now_btn", $gridSetting)) {
                         $buyNowURL = "#";
                         $actions->append('&nbsp;<a href="' . $buyNowURL . '" class="grid-row-edit" title="Buy Now"><i class="fa fa-shopping-cart"></i></a>');
                     }
                 }
             }*/

            //
        });


        $grid->filter(function ($filter) {
            // Remove the default id filter
            $filter->disableIdFilter();


        });

        return $grid;
    }

    public function getUseTableName()
    {
        return 'account_transactions';
    }

    //Add route like this one
    //$router->get('product_details_box_view', 'ProductDetailController@productDetailBoxView')->name('productDetailBoxViewControl');
    public function productDetailBoxView()
    {
        return Admin::content(function (Content $content) {
            $content->header("Choose Product");
            $content->description("");
            $productDetails = AccountTransaction::with('product')->paginate(9);
            $content->row(function (Row $row) use (&$productDetails) {
                foreach ($productDetails as $detail) {
                    $row->column(4, function (Column $column) use ($detail) {
                        $column->row($this->productBox($detail->id, $detail->product->name, $detail->price));
                    });
                }
            });
            $content->row($productDetails->links());
        });
    }

    private function productBox($id, $productName, $price)
    {
        $box = new Box("", "Box content");

        $box->style("info");

        $box->solid();

        $box->content('
			<div class="col-md-12 text-center" style="margin: 30px 0;">
				<div class="">
				  <a href="#">
					<img src="https://via.placeholder.com/150" alt="' . $productName . '" class="img-thumbnail">
					<div class="caption">
					  <h3>' . $productName . '</h3>
					  <p>' . $price . ' Tk.</p>
					  <p><a class="btn btn-primary" href="#">View Detail</a></p>
					</div>
				  </a>
				</div>
			</div>');

        return $box;
    }

}
