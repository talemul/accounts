<?php

namespace App\Admin\Controllers;

use App\Models\FinancialYearDeclaration;


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
use Illuminate\Support\Facades\Log;

class FinancialYearDeclarationController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = "FinancialYearDeclaration";

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {

        $form = new Form(new FinancialYearDeclaration);


        $financial_year_declaration_id = (request()->route()->parameter("financial_year_declaration")) ? request()->route()->parameter("financial_year_declaration") : "";
        if ($financial_year_declaration_id) {
            $financial_year_declarationinfo = FinancialYearDeclaration::find($financial_year_declaration_id);
        }
        // $form->display("id", "ID");
        $form->date("date_from", __("Date From"));
        $form->date("date_to", __("Date To"));
        $arr_project_information = array();
        $project_information = ProjectInformation::all();

        foreach ($project_information as $key => $value) {
            if ($value['id'] != 0)
                $arr_project_information[$value['id']] = $value['name'];
        }
        $form->select("project_id", __("Project Name"))->options($arr_project_information)->required();
        $form->switch("status", __("Status"))->default(1);
        $form->hidden("organization_ref_id")->default(Admin::user()->organization_ref_id);
        $form->hidden("user_ref_id")->default(Admin::user()->user_ref_id);
        $form->hidden("role_ref_id")->default(Admin::user()->role_ref_id);
        $form->hidden("created_by")->default(Admin::user()->id);
        $form->hidden("updated_by")->default(Admin::user()->id);
// callback before save
        $form->saved(function (Form $form) {
            //...
            $id = $form->model()->id;
            // dd($id);
            $financial_year_declaration = FinancialYearDeclaration::find($id);
            // dd($financial_year_declaration);
            if ($financial_year_declaration) {
                $project_id = $financial_year_declaration->project_id;
                if ($financial_year_declaration->status == 1 || $financial_year_declaration->status == '1') {
                   /* // DB::update("update financial_year_declarations set status=0 where project_id = " . $project_id . " and id not in ($id); ");
                    $affected = DB::table('financial_year_declarations')
                        ->whereNotIn('id', [$id])
                        ->where('project_id', $project_id)
                        ->update(['status' => 0]);
                    if ($affected) {
                        dd('Updated');
                    } else {
                        dd($affected);
                    }*/
                    $all_data = FinancialYearDeclaration::whereNotIn('id', [$id])
                        ->where('project_id', $project_id)->get();
                    foreach ($all_data as $val) {
                        $val->status = 0;
                        $val->save();
                      //  Log::info(json_encode($val));
                    }

                }
                /*                $financial_year_declaration = FinancialYearDeclaration::find($id);
                                dd($financial_year_declaration);
                                $financial_year_declaration->status = 1;
                                $financial_year_declaration->save();*/
            }

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
        $grid = new Grid(new FinancialYearDeclaration);

        $grid->column("id", __("Id"));
        $grid->column("date_from", __("Date From"));
        $grid->column("date_to", __("Date To"));
        //  $grid->column("project_id", __("Project Name"));
        $grid->column('Project Name')->display(function () {
            $project_name = ProjectInformation::find($this->project_id);
            $val = '';
            if ($project_name) {
                $val = $project_name->name;
            }
            return $val;
        })->sortable();
        $grid->column("status", __("Status"))->display(function ($status) {
            $style = "";
            $text = "ON";
            if ($status == 1) {
                //new
                $style = 'class="label label-primary"';
                $text = "ON";
            } elseif ($status == 0) {
                //processing
                $style = 'class="label label-warning"';
                $text = "OFF";
            }
            return "<span $style>" . $text . "</span>";

        })->sortable();

        //except super user
        $gridquery = $grid->model();

        if (Admin::user()->organization_id != 1) {
            /*    if (Admin::user()->account_type == "system") {
                    $gridquery->where("organization_ref_id", "like", Admin::user()->organization_ref_id . "%");
                } elseif (Admin::user()->account_type == "business") {
                    $gridquery->where("user_ref_id", "like", Admin::user()->user_ref_id . "%");
                }*/
        }

        $grid->actions(function ($actions) {
            $actions->disableView();
            /*
            $productFormSettings = ProductForm::where("model_name", "FinancialYearDeclaration")->first();
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
        return 'financial_year_declarations';
    }

    //Add route like this one
    //$router->get('product_details_box_view', 'ProductDetailController@productDetailBoxView')->name('productDetailBoxViewControl');
    public function productDetailBoxView()
    {
        return Admin::content(function (Content $content) {
            $content->header("Choose Product");
            $content->description("");
            $productDetails = FinancialYearDeclaration::with('product')->paginate(9);
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
