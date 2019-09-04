
<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', 'HomeController@index');

Route::get('alumnus', 'AlumnusController@index')->name('alumnus.home');
Route::get('alumnus/updates', 'AlumnusController@updates')->name('alumnus.updates');
Route::get('alumnus/batch', 'AlumnusController@batch')->name('alumnus.batch');
Route::get('alumnus/family', 'AlumnusController@family')->name('alumnus.family');
Route::get('alumnus/updates/init', 'AlumnusController@updateInit')->name('alumnus.ajx.init');
Route::get('alumnus/updates/updates', 'AlumnusController@alumnusUpdates')->name('alumnus.ajx.updates');

Route::get('company', 'CompanyController@index')->name('company.home');
Route::get('company/visitor', 'CompanyController@visitor')->name('company.visitor');
Route::get('company/company/', 'CompanyController@company')->name('company.company');
Route::get('company/company/business_overview/{id}', 'CompanyController@overview')->name('company.company.overview');
Route::get('company/company/address/{id}', 'CompanyController@address')->name('company.company.address');
Route::get('company/company/mission/{id}', 'CompanyController@mission')->name('company.company.mission');
Route::get('company/company/jobpost/{id}', 'CompanyController@jobpost')->name('company.company.jobpost');
Route::get('company/company/applicants/{id}', 'CompanyController@applicants')->name('company.company.applicants');
Route::get('company/updates', 'CompanyController@updates')->name('company.updates');
Route::get('company/ajx/companies', 'CompanyController@companies');
Route::get('company/ajx/jobposts', 'CompanyController@jobposts');
Route::get('company/ajx/jobpost', 'CompanyController@jobpostSingle');
Route::get('company/ajx/applicants', 'CompanyController@fetchApplicants');


Route::get('advertising', 'AdvertisingController@index')->name('advertising.home');
Route::get('advertising/register/company', 'AdvertisingController@company')->name('advertising.register.company');
Route::get('advertising/register/products', 'AdvertisingController@products')->name('advertising.register.products');

Route::get('account', 'AccountController@index')->name('account.home');
Route::get('account/admin', 'AccountController@admin')->name('account.admin');
Route::get('account/alumnus', 'AccountController@alumnus')->name('account.alumnus');
Route::get('account/partners', 'AccountController@partners')->name('account.partners');

Route::get('reports', 'ReportsController@index')->name('reports.home');
Route::get('reports/tesda', 'ReportsController@tesda')->name('reports.tesda');


// Auth::routes();

