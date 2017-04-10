/**
* Project  : $[G-P's Technologies Website
* Author(s): Gavin Palmer
* Date     : August 1st, 2016
* Company  : $[G-P's]$ Technologies Limited
*/

var App = angular.module('App',['ui.router']);

//Constants
App.constant('APP_Config',
{
    App_Name   : 'The Tech Sore',
    App_Version: 1.0,
    App_URL    : 'http://localhost/MyProjects/www.gp-tech-co.com/Store/public/',
	App_API_URL: 'http://localhost/MyProjects/www.gp-tech-co.com/Store/public/API/'
});

App.config(['$stateProvider', '$urlRouterProvider', 'APP_Config', function($stateProvider, $urlRouterProvider, APP_Config)
{
    /*$stateProvider
		.state('index',
        {
            url: "/",
            //templateUrl: APP_Config.App_URL+"home"//,
            //controller: 'YourCtrl'
        })
		
		.state('home',
        {
            url: "home",
            //templateUrl: APP_Config.App_URL+"home"//,
            //controller: 'YourCtrl'
        })

		
        .state('product',
        {
            url: "product/:id",
            controller: 'productController'
        });

        .state('state2', {
            url: "/state2",
            templateUrl: "partials/state2.html",
            controller: 'YourOtherCtrl'
        });

    $urlRouterProvider.otherwise("/");*/
}]);


/*$[G-P]$*/