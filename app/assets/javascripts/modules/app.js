var module = angular.module('app', [
    'ngRoute'
])

module.config(['$injector', '$routeProvider', function ($injector, $routeProvider) {
    $routeProvider
        .when('/',
        {
            templateUrl: "/welcome/template",
            controller: "AppCtrl"
        })
        .otherwise({
            templateUrl: "/welcome/template",
        })
}])

module.controller('AppCtrl', ['$scope', function ($scope) {
}])