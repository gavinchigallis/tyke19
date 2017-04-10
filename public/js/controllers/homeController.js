App.controller('homeController', ['$scope', '$http', '$rootScope', 'productService', function($scope, $http, $rootScope, productService)
{
	console.log("START - homeController");
	
	productService.getProducts().then(function(data)
    {
		$scope.products = data;
	});
	
	
	productService.getProductsOnSale().then(function(data)
    {
		$scope.products_on_sale = data;
	});
	
	
	productService.getFeaturedProducts().then(function(data)
    {
		$scope.featured_products= data;
	});
	
	console.log("STOP - homeController");
}]);