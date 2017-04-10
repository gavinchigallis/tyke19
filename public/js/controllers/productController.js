App.controller('productController', ['$scope', '$http', '$rootScope', '$window', 'productService', 'shoppingCartService', function($scope, $http, $rootScope, $window, productService, shoppingCartService)
{
	console.log("START - productController");
	/*________________________________________________________[Description]________________________________________________________________*/
	
	
	/*_________________________________________________________[Variables]_________________________________________________________________*/
	
	
	
	/*__________________________________________________________[Methods]__________________________________________________________________*/
	
	/**
	*	@Description: Use the product service to add an item to a shopping cart
	*
	*	@param:
	*
	*	@return:
	*/
	$scope.addToCart = function ()
	{
		console.log("START - addToCart");
		
		
		console.log("START - addToCart");
	}
	
	
	/*_____________________________________________________________________________________________________________________________________*/
	angular.element(document).ready(function ()
	{
		console.log("START - angular ready");
		
		//Variables
		console.log("product_id: "+$scope.product_id);
		
		
		productService.getProduct($scope.product_id).then(function(data)
		{
			console.log(data);
			if(data.status == 200)
			{
				$scope.product = data.data;
				
				if(jQuery.isEmptyObject($scope.product))
				{
					sweetAlert("Oops...", "No product matches that ID", "warning");
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
		
		console.log("STOP - angular ready");
    });
	
	console.log("STOP - productController");
}]);