<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'WelcomeController@index');
Route::get('/', 'HomeController@index');
Route::get('home', 'HomeController@index');
Route::get('login', 'HomeController@index');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

/*
 * Rutas para las vistas de administracion de nuestra aplicacion
 */
 Route::group(array('prefix' => 'admin', 'middleware' => 'auth'), function() {
	 			Route::resource('main', 'HomeController@main');
				//Usuarios
				Route::resource('user', 'UserController');
        Route::get('users/search', 'UserController@search');
				//Materias Primas
        Route::resource('raw_material', 'RawMaterialController');
        Route::get('raw_materials/search', 'RawMaterialController@search');
				//Actividades
        Route::resource('activity', 'ActivityController');
        Route::get('activitys/search', 'ActivityController@search');
				//Maquinas
        Route::resource('machine', 'MachineController');
        Route::get('machines/search', 'MachineController@search');
				//Productos
        Route::resource('product', 'ProductController');
        Route::get('products/search', 'ProductController@search');
 });

//Rutas permitidas SIN autenticacion
//Route::get('attachment/get/view/{id}', array('uses' => 'AttachmentController@getAttachmentURL'));
Route::get('attachment/get/{action}/{id}/{key}', array('uses' => 'AttachmentController@getAttachment'));

/*
 * Ruta para identificar el host donde se esta ejecutando al aplicacion
 */
Route::get('host', function() {
    echo gethostname();
    $app = new Illuminate\Foundation\Application;
    $env = $app->detectEnvironment(array(
        'local' => array('localhost', 'MacBook-Pro-de-Alexander.local', 'localhost', 'ALEX-PC'),
        'production' => array('pendiente'),
        ));
    echo " ___ " . $env;
});

Route::resource('news', 'NewsController');
Route::get('news/{id}/delete', [
    'as' => 'news.delete',
    'uses' => 'NewsController@destroy',
]);
