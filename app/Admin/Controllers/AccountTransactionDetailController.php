<?php

namespace App\Admin\Controllers;

use App\Models\AccountTransactionDetail;


use App\Models\ProductForm;
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

class AccountTransactionDetailController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = "AccountTransactionDetail";

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {

        $form = new Form(new AccountTransactionDetail);


        $account_transaction_detail_id = (request()->route()->parameter("account_transaction_detail")) ? request()->route()->parameter("account_transaction_detail") : "";
        if ($account_transaction_detail_id) {
            $account_transaction_detailinfo = AccountTransactionDetail::find($account_transaction_detail_id);
        }
        $form->display("id", "ID");
        $form->number("account_transaction_id", __("Account Transaction"))->required();
        $form->number("d_amount", __("D amount"));
        $form->number("c_amount", __("C Amount"));


        $form->hidden("organization_ref_id")->default(Admin::user()->organization_ref_id);
        $form->hidden("user_ref_id")->default(Admin::user()->user_ref_id);
        $form->hidden("role_ref_id")->default(Admin::user()->role_ref_id);
        $form->hidden("created_by")->default(Admin::user()->id);
        $form->hidden("updated_by")->default(Admin::user()->id);

        return $form;
    }


    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new AccountTransactionDetail);

        $grid->column("id", __("Id"));
        $grid->column("account_transaction_id", __("Account Transaction"));
        $grid->column("d_amount", __("D amount"));
        $grid->column("c_amount", __("C Amount"));

        //except super user
        $gridquery = $grid->model();

        if (Admin::user()->organization_id != 1) {
            if (Admin::user()->account_type == "system") {
                $gridquery->where("organization_ref_id", "like", Admin::user()->organization_ref_id . "%");
            } elseif (Admin::user()->account_type == "business") {
                $gridquery->where("user_ref_id", "like", Admin::user()->user_ref_id . "%");
            }
        }

        $grid->actions(function ($actions) {
            $productFormSettings = ProductForm::where("model_name", "AccountTransactionDetail")->first();
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
            }

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
        return 'account_transaction_details';
    }

    //Add route like this one
    //$router->get('product_details_box_view', 'ProductDetailController@productDetailBoxView')->name('productDetailBoxViewControl');
    public function productDetailBoxView()
    {
        return Admin::content(function (Content $content) {
            $content->header("Choose Product");
            $content->description("");
            $productDetails = AccountTransactionDetail::with('product')->paginate(9);
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
