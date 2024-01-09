<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('test_table', TestTableController::class)->names('TestTableController');
    $router->resource('building_information', BuildingInformationController::class)->names('building_information');
    $router->resource('unit_information', UnitInformationController::class)->names('unit_information');
    $router->resource('shift_information', ShiftInformationController::class)->names('shift_information');
    $router->resource('section_information', SectionInformationController::class)->names('section_information');
    $router->resource('religion_information', ReligionInformationController::class)->names('religion_information');
    $router->resource('district_information', DistrictInformationController::class)->names('district_information');
    $router->resource('designation_information', DesignationInformationController::class)->names('designation_information');
    $router->resource('project_information', ProjectInformationController::class)->names('project_information');
    $router->resource('department_information', DepartmentInformationController::class)->names('department_information');
    $router->resource('chart_of_accounts', ChartOfAccountController::class)->names('chart_of_accounts');
    $router->resource('financial_year_declarations', FinancialYearDeclarationController::class)->names('financial_year_declarations');
    $router->resource('account_transaction_details', AccountTransactionDetailController::class)->names('account_transaction_details');
    $router->resource('account_transactions', AccountTransactionController::class)->names('account_transactions');
    $router->resource('iteams', IteamController::class)->names('iteams');
    $router->resource('size_information', SizeInformationController::class)->names('size_information');
    $router->resource('packing_information', PackingInformationController::class)->names('packing_information');
    $router->resource('contra_voucher', ContraVoucherController::class)->names('contra_voucher');
    $router->resource('cash_received', CashReceivedController::class)->names('cash_received');
    $router->resource('cash_payment', CashPaymentController::class)->names('cash_payment');
    $router->resource('bank_received', BankReceivedController::class)->names('bank_received');
    $router->resource('bank_payment', BankPaymentController::class)->names('bank_payment');
    $router->resource('custom_user', CustomUserController::class)->names('custom_user');


});
