<?php

namespace App\Admin\Controllers;

use App\Models\ProjectInformation;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ProjectInformationController extends Controller
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
            ->header(trans('admin.index'))
            ->description(trans('admin.description'))
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
            ->header(trans('admin.detail'))
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
            ->header(trans('admin.edit'))
            ->description(trans('admin.description'))
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
            ->header(trans('admin.create'))
            ->description(trans('admin.description'))
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ProjectInformation);

        $grid->id('ID');
        $grid->name('Name');
        $grid->description('description');
        $grid->projecr_address('projecr_address');
        $grid->address2('address2');
        $grid->level('level');
        $grid->created_at(trans('admin.created_at'));
        $grid->updated_at(trans('admin.updated_at'));

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
        $show = new Show(ProjectInformation::findOrFail($id));

        $show->id('ID');
        $show->name('Name');
        $show->description('description');
        $show->projecr_address('projecr_address');
        $show->address2('address2');
        $show->level('level');
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
        $form = new Form(new ProjectInformation);

        $form->display('ID');
        $form->text('name', 'Name');
        $form->text('description', 'description');
        $form->text('projecr_address', 'projecr_address');
        $form->text('address2', 'address2');
        $form->text('level', 'level');
//        $form->display(trans('admin.created_at'));
//        $form->display(trans('admin.updated_at'));
        $form->hidden("created_by")->default(Admin::user()->id);
        $form->hidden("updated_by")->default(Admin::user()->id);
        return $form;
    }
}
