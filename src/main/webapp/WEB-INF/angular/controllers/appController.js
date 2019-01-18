/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function () {
    
    var app = angular.module('MMDIS-Controller',[]);
    
    app.controller('appCtrl', ['$scope', '$rootScope', 'appService', function ($scope, $rootScope, appService) {
            console.log("appCtrl logged on.");
            $scope.test2 = 'asdasd';
    }]);

})();
