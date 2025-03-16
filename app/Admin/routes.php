<?php

use Illuminate\Routing\Router;
use Encore\Admin\Facades\Admin;
use Illuminate\Support\Facades\Route;
use App\Admin\Controllers\CodeGenController;
use App\Admin\Controllers\CompanyController;
use App\Admin\Controllers\EmployeesController;
use App\Admin\Controllers\StockItemController;
use App\Admin\Controllers\CompanyEditController;
use App\Admin\Controllers\StockRecordController;
use App\Admin\Controllers\StockCategoryController;
use App\Admin\Controllers\FinancialPeriodController;
use App\Admin\Controllers\StockSubCategoryController;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('companies', CompanyController::class);
    $router->resource('stock-categories', StockCategoryController::class);
    $router->resource('stock-sub-categories', StockSubCategoryController::class);
    $router->resource('financial-periods', FinancialPeriodController::class);
    $router->resource('employees', EmployeesController::class);
    $router->resource('stock-items', StockItemController::class);
    $router->resource('stock-records', StockRecordController::class);
    $router->resource('companies-edit', CompanyEditController::class);
    $router->resource('gens', CodeGenController::class);

});

