App.service('shoppingCartService', ['$http', '$q', 'APP_Config', function($http, $q, APP_Config)
{
	/*Description*/
	/*TThis service is responsibly for all C.R.U.D operations related to the shopping cart*/
	
	/*Attributes*/
	this.Amount;
	this.Value;
	
	/*Methods*/

	/**
	*	@Description:	Reset the existing values to the default values, NO HTTP request made
	*
	*	@param:	user_id (Integer) - The user id
	*
	*	@return: 
	*/
    this.initialize = function ()
	{
		this.Amount = 0;
		this.Value = 0;
	}
	

	/**
	*	@Description:	Get the all items on the user's shopping cart
	*
	*	@param:	user_id (Integer) - The user id
	*
	*	@return: Shopping_cart(JSON ARRAY) - an array of all items in the users shopping cart
	*/
    this.getShoppingCart = function (user_id)
	{
		var deferred = $q.defer();
		
		$http.get(APP_Config.App_API_URL+'shopping_cart?User_ID='+user_id)
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
	
	
	/**
	*	@Description:	Add a shopping cart item to the users accounts
	*
	*	@param:	user_id (Integer) - The user id
	*
	*	@return: Shopping_cart(JSON ARRAY) - an array of all items in the users shopping cart
	*/
    this.getAddToCart = function (user_id)
	{
		var deferred = $q.defer();
		
		$http.get(APP_Config.App_API_URL+'shopping_cart?User_ID='+user_id)
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