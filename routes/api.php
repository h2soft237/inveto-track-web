<?php

use App\Http\Controllers\ApiController;
use App\Models\StockItem;
use Illuminate\Http\Request;
use App\Models\StockSubCategory;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


Route::post('auth/register', [ApiController::class, 'register']);
Route::post('auth/login', [ApiController::class, 'login']);
Route::post('api/{model}', [ApiController::class, 'my_update']);
Route::get('api/{model}', [ApiController::class, 'my_list']);
Route::post('file-uploading', [ApiController::class, 'file_uploading']);
Route::get('manifest', [ApiController::class, 'manifest']);


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


//route for stock-items
Route::get('/stock-items', function (Request $request) {
    $q = $request->get('q');

    $company_id = $request->get('company_id');
    if ($company_id == null) {
        return response()->json([
            'data' => [],
        ], 400);
    }

    $sub_categories =
        StockItem::where('company_id', $company_id)
        ->where('name', 'like', "%$q%")
        ->orderBy('name', 'asc')
        ->limit(20)
        ->get();

    $data = [];

    foreach ($sub_categories as $sub_category) {
        $data[] = [
            'id' => $sub_category->id,
            'text' => $sub_category->sku . " " . $sub_category->name_text,
        ];
    }

    return response()->json([
        'data' => $data,
    ]);
});


//route for stock-sub-categories
Route::get('/stock-sub-categories', function (Request $request) {
    $q = $request->get('q');

    $company_id = $request->get('company_id');
    if ($company_id == null) {
        return response()->json([
            'data' => [],
        ], 400);
    }

    $sub_categories =
        StockSubCategory::where('company_id', $company_id)
        ->where('name', 'like', "%$q%")
        ->orderBy('name', 'asc')
        ->limit(20)
        ->get();

    $data = [];

    foreach ($sub_categories as $sub_category) {
        $data[] = [
            'id' => $sub_category->id,
            'text' => $sub_category->name_text . " (" . $sub_category->measurement_unit . ")",
        ];
    }

    return response()->json([
        'data' => $data,
    ]);
});
