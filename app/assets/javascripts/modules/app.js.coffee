module = angular.module('app', [
    'ngRoute'
])

module.config(['$injector', '$routeProvider', ($injector, $routeProvider) ->
    $routeProvider
        .when('/',
            templateUrl: "/welcome/template",
            controller: "AppCtrl"
        )
        .otherwise(
            templateUrl: "/welcome/template"
        )
])

module.controller('AppCtrl', ['$scope', ($scope) ->
    $scope:
        data:
            something: null
])