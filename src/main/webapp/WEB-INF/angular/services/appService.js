/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

﻿(function () {
    var app = angular.module('MMDIS-Service',[]);

    app.service('appService', ["$scope", "$filter", "$http", '$window', 'constantURL', '$rootScope', '$cookies', function ($scope, $filter, $http, $window, constantURL, $rootScope, $cookies) {
            console.log("appService logged on.");
            var service = {};
            service.getUserById = function () {
                return constantURL.baseURL;
            };
            return service;

        }]);

})();
