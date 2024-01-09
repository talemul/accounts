<?php

namespace App\Admin\Controllers;

use App\Models\ChartOfAccount;
use App\Models\Iteam;
use App\Models\PackingInformation;
use App\Models\ProjectInformation;
use App\Http\Controllers\Controller;

use App\Models\SizeInformation;
use App\Models\UnitInformation;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class IteamController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Item Information')
            ->description('List')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Item Information')
            ->description(trans('admin.description'))
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Item Information ')
            ->description('Edit')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Item Information ')
            ->description('Create')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Iteam);
        $grid->column('Project Name')->display(function () {
            $project_name = ProjectInformation::find($this->project_id);
            $val = '';
            if ($project_name) {
                $val = $project_name->name;
            }
            return $val;
        })->sortable();
        $grid->code('code')->sortable();
        $grid->code_desc('code_desc')->sortable();
       // $grid->other_desc('other_desc');
       // $grid->code_tech_desc('code_tech_desc');
        $grid->code_level('code_level')->editable();
        $grid->p_code('p_code')->sortable();
        // $grid->b_code('b_code');
        $grid->acc_level('acc_level')->sortable();
        $grid->g_code('g_code');
        $grid->origin('Origin')->sortable();
        $grid->column('packing.description');
        $grid->column('unit.description');
        $grid->column('size.description');
        $grid->id('Create Action')->display(function ($id) use ($grid) {
            return '<a style="max-width:100px; overflow:auto;word-wrap: break-word;" href="/admin/iteams/create?p=' . $this->id . '&l=' . (((int)$this->acc_level) + 1) . '&c=' . $this->code . '&pi=' . $this->project_id. '" target="_self"> Add</a>';
        });
        $grid->model()->orderBy('code', 'asc');
        $grid->model()->orderBy('project_id', 'asc');
        $grid->model()->where('project_id', '=', Admin::user()->project_id);
        //  $grid->created_by('created_by');
        // $grid->updated_by('updated_by');
        // $grid->p_id('p_id');
        // $grid->created_at(trans('admin.created_at'));
        // $grid->updated_at(trans('admin.updated_at'));
        $grid->actions(function ($actions) {

//            // the array of data for the current row
//            //   dd($actions->row);
//
//            // gets the current row primary key value
//            $pk = $actions->getKey();
//            $actions->prepend('<a href="/chart_of_accounts/create?p=' . $pk . '><i class="fa fa-eye"></i> create new</a>');
        });
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Iteam::findOrFail($id));

        //  $show->id('ID');
        $show->code('code');
        $show->code_desc('code_desc');
        $show->other_desc('other_desc');
        $show->code_tech_desc('code_tech_desc');
        $show->code_level('code_level');
        $show->p_code('p_code');
        $show->b_code('b_code');
        $show->acc_level('acc_level');
        $show->g_code('g_code');
        $show->created_by('created_by');
        $show->updated_by('updated_by');
        $show->p_id('p_id');
        $show->created_at(trans('admin.created_at'));
        $show->updated_at(trans('admin.updated_at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Iteam);
        $p_id = 0;
        $acc_level = 1;
        $code = '0';
        $product_id = '0';
        if (request()->has('p')) {
            $p_id = request('p');
            $acc_level = request('l');
            $p_code = request('c');
            $product_id=request('pi');
            $siblings_count = Iteam::where('p_id', '=', $p_id)->where('project_id', '=', Admin::user()->project_id)->get()->count();
            if ($siblings_count) {
                $code = sprintf("%03d", $siblings_count + 1);
            } else {
                $code = sprintf("%03d", 1);
            }
            $code = $p_code . $code;
        }
        $arrParameters = request()->route()->parameters();
        $idCheck = (int)end($arrParameters);
        if ($idCheck) {
            $chart_of_account = Iteam::find($idCheck);
            $p_id = $chart_of_account->p_id;
            $acc_level = $chart_of_account->acc_level;
            $code = $chart_of_account->code;
            $product_id = $chart_of_account->project_id;
        } else {
            if (request()->has('p')) {
            } else {
                $code = Iteam::where('p_id', '=', 0)->where('project_id', '=', Admin::user()->project_id)->get()->count() + 1;
                if ($code == 0) {
                    $code = 1;
                }
            }
        }

        $form->hidden('code', 'code')->default($code);
        $arr_project_information = array();
        $project_information = ProjectInformation::all();
        if ($acc_level == 1 || $acc_level == '1') {
            $arr_project_information[0] = 'Root';
        }

        foreach ($project_information as $key => $value) {
            if ($value['id'] != 0)
                $arr_project_information[$value['id']] = $value['name'];
        }
        $form->select('project_id', 'Project Name')->options($arr_project_information)->default(Admin::user()->project_id)->required()->readOnly();
        $form->text('code_desc', 'code_desc');
        $form->text('other_desc', 'other_desc');
        $form->text('code_tech_desc', 'code_tech_desc');
        $form->text('bar_code', 'Bar Code');
        $form->hidden('code_level', 'code_level')->default(1);
        $form->hidden('p_code', 'p_code')->default('00');
        $form->text('b_code', 'b_code');

        $form->hidden('acc_level', 'acc_level')->default($acc_level);
        $form->text('g_code', 'g_code');
        $arr_packing_information = array();
        $packing_information = PackingInformation::all();
        foreach ($packing_information as $key => $value) {
            if ($value['id'] != 0)
                $arr_packing_information[$value['id']] = $value['description'];
        }
        $form->select('packing_id', 'Packing')->options($arr_packing_information)->default($product_id);

        $arr_unit_information = array();
        $unit_information = UnitInformation::all();
        foreach ($unit_information as $key => $value) {
            if ($value['id'] != 0)
                $arr_unit_information[$value['id']] = $value['description'];
        }
        $form->select('unit_id', 'Unit')->options($arr_unit_information)->default($product_id);

        $arr_size_information = array();
        $size_information = SizeInformation::all();
        foreach ($size_information as $key => $value) {
            if ($value['id'] != 0)
                $arr_size_information[$value['id']] = $value['description'];
        }
        $form->select('size_id', 'Size')->options($arr_size_information)->default($product_id);

        $form->hidden("created_by")->default(Admin::user()->id);
        $form->hidden("updated_by")->default(Admin::user()->id);
        //$form->text('created_by', 'created_by');
        //$form->text('updated_by', 'updated_by');
        $form->hidden('p_id', 'p_id')->default($p_id);
        //  $form->display(trans('admin.created_at'));
        //  $form->display(trans('admin.updated_at'));
        $form->hidden('created_by')->default(Admin::user()->id);
        $form->hidden('updated_by')->default(Admin::user()->id);
        $form->saved(function (Form $form) {
            $id = $form->model()->id;
            $chart_of_account = Iteam::find($id);
            if ($chart_of_account->p_id == 0) {
                $chart_of_account->p_code = $chart_of_account->code;
                $chart_of_account->origin = $chart_of_account->code_desc;
            } else {
                $p_chart_of_account = Iteam::find($chart_of_account->p_id);
                $chart_of_account->origin = $chart_of_account->code_desc . '<' . $p_chart_of_account->origin;
                $chart_of_account->p_code = $p_chart_of_account->code;
            }
            $chart_of_account->save();
        });
        return $form;
    }
}
