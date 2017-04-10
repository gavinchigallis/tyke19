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

Route::get('/', function ()
{
    return view('welcome');
});


Route::get('/home', function ()
{
    return view('home');
});


Route::get('product/{product_id}', function($product_id)
{    
	return view('product')->with('product_id', $product_id);
});


Route::get('/checkout', function ()
{
    return view('checkout');
});


Route::get('/help', function ()
{
	$routeCollection = Route::getRoutes();

	foreach ($routeCollection as $value)
	{
		echo '<br/><b>'.$value->getName().'</b>&nbsp; - &nbsp;'.$value->getPath();
		
		//$value->getName();
		//$value->getPath();
	}
	
	return;
});


//To be used for the App routes
Route::group(['prefix'=>'API'], function()
{
	Route::get('/', function ()
	{
    	return view('welcome');
	});
	
	
	Route::get('/routes', function ()
	{
		$routeCollection = Route::getRoutes();

		$ApplicationRoutes = array();
		
		foreach ($routeCollection as $value)
		{
			$ApplicationRoute = array($value->getName()=>$value->getPath());
			$ApplicationRoute = json_encode($ApplicationRoute);
			array_push($ApplicationRoutes, $ApplicationRoute);
			//$value->getName();
			//$value->getPath();
		}
		
		$ApplicationRoutes = json_encode($ApplicationRoutes);
		echo $ApplicationRoutes;
		
		return;
	});
	

	//Products
    Route::get('/products', [
								'uses' => 'productController@getProducts',
								'as' => 'products'/*,
								'middleware' => 'auth'*/
							]
			  );
			  
			  
	Route::get('/product_by_id', [
								'uses' => 'productController@getProductByID',
								'as' => 'product_by_id'/*,
								'middleware' => 'auth'*/
							]
			  );
			  
			  
	Route::get('/products_on_sale', [
										'uses' => 'productController@getProductsOnSale',
										'as' => 'products_on_sale'/*,
										'middleware' => 'auth'*/
								  ]
			  );
			  
			  
	Route::get('/featured_products', [
										'uses' => 'productController@getFeaturedProducts',
										'as' => 'featured_products'/*,
										'middleware' => 'auth'*/
								  ]
			  );
			  
			  
	Route::get('/updates', [
							'uses' => 'updateController@getUpdates',
							'as' => 'updates'
			  			   ]
			  );
			  
	Route::get('/main_categories',
							[
								'uses' => 'categoryController@getMainCategories',
								'as' => 'main_categories'/*,
								'middleware' => 'auth'*/
							]
			  );
			  
	Route::get('/categories',
							[
								'uses' => 'categoryController@getCategories',
								'as' => 'categories'/*,
								'middleware' => 'auth'*/
							]
			  );
			  
	Route::get('/shopping_cart', [
								'uses' => 'Shopping_cartController@getShoppingCartByID',
								'as' => 'Shopping_cart'/*,
								'middleware' => 'auth'*/
							]
			  );
});

/*
To be used for the App routes
Route::group(['prefix'=>'App'], function()
{
    Route::get('/Joke', 'Module@function');
});
*/

