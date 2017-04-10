App.controller('headerController', ['$scope', '$http', '$rootScope', 'categoryService', 'shoppingCartService', function($scope, $http, $rootScope, categoryService, shoppingCartService)
{
	//console.log("START - headerController");
	
	categoryService.getCategories().then(function(data)
    {
		$scope.categories = data;
	});
	
	
	$scope.set_subcategories = function(Subcategories)
    {
		$scope.subcategories = Subcategories;
	}
	
	$scope.shoppingCartService = shoppingCartService;
	
	$scope.shoppingCartService.initialize();
	
	$scope.shoppingCartService.getShoppingCart(1).then(function(data)
	{
		console.log(data);
		if(data.status == 200)
		{
			$scope.shoppingCart = data.data;
			
			$scope.shoppingCartService.Amount = $scope.shoppingCart.length;
			
			$scope.shoppingCartService.Value = 0;
			for(var a=0; a<$scope.shoppingCart.length; a++)
			{
				$scope.shoppingCartService.Value+=parseFloat($scope.shoppingCart[0].price);
			}
		}
		else if(data.status == 419)
		{
			sweetAlert("Oops...", ""+data.data.Error, "warning");
		}
		else
		{
			sweetAlert("Oops...", "An unexpect error occured, our engineers will be working to get it resolved. Please try again later", "error");
		}
	});
	
	//console.log("STOP - headerController");
}]);