App.service('updates', ['$http', '$q', 'APP_Config', function($http, $q, APP_Config)
{
    this.getUpdates = function ()
	{
		var deferred = $q.defer();
		
		$http.get(APP_Config.App_API_URL+'updates')
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