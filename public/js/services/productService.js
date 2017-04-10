App.service('productService', ['$http', '$q', 'APP_Config', function($http, $q, APP_Config)
{
    this.getProducts = function ()
	{
		var deferred = $q.defer();
		
		$http.get(APP_Config.App_API_URL+'products')
		   .success(
						function(data)
						{
							deferred.resolve(data);
						}
					)
		   .error(
						function()
						{
							return deferred.reject();
						}
				 );
		
		return deferred.promise; //return the promise
    }
	
	
	this.getProductsOnSale = function ()
	{
		var deferred = $q.defer();
		
		$http.get(APP_Config.App_API_URL+'products_on_sale')
		   .success(
						function(data)
						{
							deferred.resolve(data);
						}
					)
		   .error(
						function()
						{
							return deferred.reject();
						}
				 );
		
		return deferred.promise; //return the promise
    }
	
	
	this.getFeaturedProducts = function ()
	{
		var deferred = $q.defer();
		
		$http.get(APP_Config.App_API_URL+'featured_products')
		   .success(
						function(data)
						{
							deferred.resolve(data);
						}
					)
		   .error(
						function()
						{
							return deferred.reject();
						}
				 );
		
		return deferred.promise; //return the promise
    }
	
	
	this.getProduct = function (id)
	{
		var deferred = $q.defer();
		
		$http.get(APP_Config.App_API_URL+'product_by_id?Product_ID='+id)
		   .success(
						function(data, status)
						{
							return deferred.resolve({"status":status, data});
						}
					)
		   .error(
						function(data, status)
						{
							return deferred.resolve({"status":status, data});
						}
				 );
		
		return deferred.promise; //return the promise
    }
	
	
	
	
}]);