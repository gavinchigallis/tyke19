App.service('categoryService', ['$http', '$q', 'APP_Config', function($http, $q, APP_Config)
{
    this.getCategories = function ()
	{
		var deferred = $q.defer();
		
		$http.get(APP_Config.App_API_URL+'categories')
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
	
	
}]);