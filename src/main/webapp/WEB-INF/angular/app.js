/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function () {
    var app = angular.module('MMDIS', [
        'ngAnimate',
        'ui.bootstrap',
        'ui.sortable',
        'ui.router',
        'ngTouch',
        'toastr',
        'smart-table',
        "xeditable",
        'ui.slimscroll',
        'ngJsTree',
        'angular-progress-button-styles',
        'BlurAdmin.theme',
        'BlurAdmin.pages',
        'MMDIS-Service',
        'MMDIS-Controller',
        'security'
    ]);

    app.run(function ($rootScope, $window, growl) {

        $rootScope.spinnerShow = false;
        $rootScope.appPath = $window.location.pathname;
        $rootScope.currentLocation = $window.location.href;
        //Relay the message over session - in case redirection occur
        if (sessionStorage.message !== null && sessionStorage.message !== undefined) {
            growl.success(sessionStorage.message, {title: 'SUCCESS!', ttl: 10000});
            delete sessionStorage.message;
        }
    });

    app.constant("constantURL", {
        baseURL: "http://localhost:8080/MMDIS_UI",
        apiURL: "http://localhost:8080/MMDIS_API",
        ssmApi: "http://staging.mydata-ssm.com.my:5000/webapi"
    });

})();