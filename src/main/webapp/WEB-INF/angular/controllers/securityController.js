/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function () {
    'use strict';

    var app = angular.module('security');

    app.controller('SecurityController', ["$scope", "$filter", "$http", '$window', 'growl', 'apiURL', '$rootScope', '$cookies', 'baseURL', '$location', 'sharedFunc', function ($scope, $filter, $http, $window, growl, apiURL, $rootScope, $cookies, baseURL, $location, sharedFunc) {
            console.log("SecurityController logged on.");


        }]);

})();