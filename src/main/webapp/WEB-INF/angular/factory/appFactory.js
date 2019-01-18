/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function () {
    var app = angular.module('MMDIS');
    //Declaring a service to fetch the base URL of the application - Firdhaus, 03/05/17
    app.factory('baseURL', ['$window', '$location', function ($window, $location) {
            return "http://localhost:8080/MMDIS_TESTING";
//            return "http://202.129.173.74:8080/MMDIS_TESTING";
        }]);
    app.factory('apiURL', ['$window', '$location', function ($window, $location) {
            return "http://localhost:8080/MMDIS_API";
//            return "http://202.129.173.74:8080/MMDIS_API";
        }]);
    app.factory('ssmApi', ['$window', '$location', function ($window, $location) {
            return "http://staging.mydata-ssm.com.my:5000/webapi";
        }]);
    app.factory('docApiURL', ['$window', '$location', function ($window, $location) {
            return 'http://192.168.0.5/doccentre';
        }]);
    app.factory('eduCORURL', ['$window', '$location', function ($window, $location) {
//            return 'http://10.6.0.107:8080/MMDIS_EDUCOR';
            return 'http://202.129.173.69:8080/MMDIS_EDUCOR';
        }]);
    app.factory('sharedFunc', ['$http', 'apiURL', 'growl', '$q', '$rootScope', '$window', '$location', function ($http, apiURL, growl, $q, $rootScope, $window, $location) {
            $rootScope.item = {};
            return {
                queryString: function (param, path) {
                    var sPageURL = path || window.location.search.substring(1),
                            sURLVariables = sPageURL.split(/[&||?]/),
                            res;
                    for (var i = 0; i < sURLVariables.length; i += 1) {
                        var paramName = sURLVariables[i],
                                sParameterName = (paramName || '').split('=');
                        if (sParameterName[0] === param) {
                            res = sParameterName[1];
                        }
                    }
                    return res;
                },
                getPath: function () {
                    return new $window.URL($location.absUrl()).href;
                },
                ssmApiKey: function () {
                    return 'eyJpc3MiOiJodHRwczovL2p3dC1pZHFz';
                },
                func2: function () {
                    alert("I'm func2!");
                },
                isUndefinedOrNull: function (obj) {
                    return !angular.isDefined(obj) || obj === null;
                },
                isEmpty: function (str) {
                    if (str === undefined || str === null || str === '' || str === '-' || str === ' ' || str.length === 0 || str === "null") {
                        return true;
                    } else {
                        return false;
                    }
                },
                parseDate: function (strDate) {
                    return new Date(strDate);
                },
                dateToString: function (Date) {
                    var dateString = Date;
                    dateString = dateString.getFullYear() + '-' + ('0' + (dateString.getMonth() + 1)).slice(-2) + '-' + ('0' + dateString.getDate()).slice(-2);
                    return dateString;
                },
                formatTime: function (strTime) {
                    return new Date(strTime).getHours() + ":" + new Date(strTime).getMinutes() + ":" + new Date(strTime).getSeconds();
                },
                formatHourMinSec: function (num) {
                    return ('0' + num.toString()).slice(-2);
                },
                getHourList: function () {
                    var hourList = [];
                    for (var i = 0; i < 24; i++) {
                        hourList.push(('0' + i).slice(-2));
                    }
                    return hourList;
                },
                getMinuteList: function () {
                    var minuteList = [];
                    for (var i = 0; i < 60; i++) {
                        minuteList.push(('0' + i).slice(-2));
                    }
                    return minuteList;
                },
                openReport: function (url, data) {
                    var form = document.createElement("form");
                    form.action = url;
                    form.method = 'POST';
                    form.target = "_blank";
                    if (data) {
                        for (var key in data) {
                            var input = document.createElement("textarea");
                            input.name = key;
                            input.value = typeof data[key] === "object" ? JSON.stringify(data[key]) : data[key];
                            form.appendChild(input);
                        }
                    }

                    var xinput = document.createElement("textarea");
                    xinput.name = "secureToken";
                    xinput.value = $http.defaults.headers.common["X-Auth-Token"];
                    form.appendChild(xinput);
                    form.style.display = 'none';
                    document.body.appendChild(form);
                    form.submit();
                },
                dateIsExpired: function (inputDate) {
                    var a = new Date(inputDate);
                    var b = new Date();
                    if (a > b) {
                        return true;
                    } else {
                        return false;
                    }
                },
                dateIsEqual: function (a, b) {

                },
                getAlpha: function (index) {
                    var alpha = String.fromCharCode(index);
                    return alpha;
                },
                getRomanNumber: function romanize(number) {
                    if (!+number)
                        return false;
                    var digits = String(+number).split(""),
                            key = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM",
                                "", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC",
                                "", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"],
                            roman = "",
                            i = 3;
                    while (i--)
                        roman = (key[+digits.pop() + (i * 10)] || "") + roman;
                    return Array(+digits.join("") + 1).join("M") + roman;
                },
                dateIsBefore: function () {},
                httpPOST: function (url, requestBody, successMsg) { //In case for maintenance and code cleanup, FUTURE_USE
                    var promises = $q.defer();
//                    $rootScope.spinnerShow = true;
//                    console.log(successMsg);
                    var showGrowl = false;
                    if (successMsg !== undefined) {
                        showGrowl = true;
                    }
//                    console.log(showGrowl);
                    try {
                        $http({
                            method: 'POST',
                            url: apiURL + url,
                            data: JSON.stringify(requestBody),
                            headers: {
                                'Content-Type': 'application/json; charset=utf-8'
                            }
                        }).then(function onSuccess(response) {
                            var res = response.data;
                            //                    console.log(res)
                            if (res.Success) {
                                //                    console.log(res);
                                $rootScope.spinnerShow = false;
                                if (showGrowl) {
                                    growl.success(successMsg, {
                                        title: 'SUCCESS!',
                                        ttl: 10000
                                    });
                                }
                                return promises.resolve(res);
                            } else {
                                $rootScope.spinnerShow = false;
                                console.error(res);
                                growl.error(res.Message, {
                                    title: 'ERROR!'
                                });
                                return promises.reject(res);
                            }
                        }).catch(function onError(error) {
                            console.error(error);
                            $rootScope.spinnerShow = false;
                            growl.error("Error : " + error.status, {
                                title: 'ERROR!'
                            });
                            return promises.reject(error);
                        });
                    } catch (e) {
                        growl.error(e.toString(), {
                            title: 'Error!',
                            ttl: 10000
                        })
                    }
                    return promises.promise;
                }, //In case for maintenance and code cleanup, FUTURE_USE (Can See usage at maklumat_perjawatan.js);
                httpGET: function (url, successMsg) { //In case for maintenance and code cleanup, FUTURE_USE (Can See usage at maklumat_perjawatan.js);
                    var promises = $q.defer();
                    var showGrowl = false;
                    $rootScope.spinnerShow = true;
                    if (successMsg !== undefined) {
                        showGrowl = true;
                    }
//                    console.log(showGrowl);
                    $http({
                        method: 'GET',
                        url: apiURL + url
                    }).then(function onSuccess(response) {
                        var res = response.data;
                        //                    console.log(response);
                        if (!res.Success) {
//                                                console.log(res);
                            $rootScope.spinnerShow = false;
                            if (showGrowl) {
                                growl.success(successMsg, {
                                    title: 'SUCCESS!',
                                    ttl: 10000
                                });
                            }
                            return promises.resolve(res);
                        } else {
                            if (res.Message !== null) {
                                $rootScope.spinnerShow = false;
                                growl.error(res.Message, {
                                    title: 'ERROR!'
                                });
                                return promises.reject(res);
                            }
                        }
                    }).catch(function onError(error) {
                        //                    console.log(error);
                        $rootScope.spinnerShow = false;
                        growl.error("Error : " + error.status, {
                            title: 'ERROR!'
                        });
                        return promises.reject(error);
                    });
                    return promises.promise;
                }, getMap: function (mapNo) {
                    $rootScope.item = {};
                    var myLatlng = {lat: 3.787052, lng: 107.780060};
                    var map = null;
                    geocoder = new google.maps.Geocoder();
                    if (this.isEmpty(mapNo)) {
                        var map = new google.maps.Map(document.getElementById('map'), {
                            zoom: 5,
                            center: myLatlng
                        });
                    } else {
                        var map = new google.maps.Map(document.getElementById('map' + mapNo), {
                            zoom: 5,
                            center: myLatlng
                        });
                    }

                    var marker = new google.maps.Marker({
                        position: {lat: 0, lng: 0},
                        map: map
                    });
//                   ** For textbox search in map for future use ** 
//                    var input = (document.getElementById('pac-input'));
//                    map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

//                    var searchbox = new google.maps.places.SearchBox((input));/** @type {HTMLInputElement} */

//                    google.maps.event.addListener(searchBox, 'places_changed', function () {
//                        var places = searchBox.getPlaces();
//                        for (var i = 0, marker; marker = markers[i]; i++) {
//                            marker.setMap(null);
//                        }
//                        markers = [];
//                        var bounds = new google.maps.LatLngBounds();
//                        for (var i = 0, place; place = places[i]; i++) {
//                            // Create a marker for each place.
//                            var marker = new google.maps.Marker({
//                                map: map,
//                                title: place.name,
//                                position: place.geometry.location
//                            });
//                            markers.push(marker);
//                            bounds.extend(place.geometry.location);
//                        }
//                        map.fitBounds(bounds);
//                    });

                    google.maps.event.addListener(map, 'click', function (event) {
                        $rootScope.coordinates = event.latLng.toString().replace("(", "").replace(")", "");
                        console.log($rootScope.coordinates);
                        var array = $rootScope.coordinates.split(",");
                        marker.setPosition(event.latLng);
                        $rootScope.$apply(function () {
                            $rootScope.item.latitude = array[0];
                            $rootScope.item.longitude = array[1];
                        });
                    });
                }, getMap2: function (coordinatesList) {

                    var myLatlng = {lat: 3.787052, lng: 107.780060};
                    var markers = [];
                    var markerLocation = coordinatesList;
//                    var markerLocation = [
//                        ['Tanjung Harapan', 3.009301, 101.361991],
//                        ['Tanjung Belungkur', 1.447228, 104.062660],
//                        ['Batu Pahat', 1.850950, 102.924536],
//                        ['Bintulu', 3.190331, 113.033947],
//                        ['Kabung', 1.801865, 111.121971]
//                    ];

                    var map = new google.maps.Map(document.getElementById('map2'), {
                        zoom: 5,
                        center: myLatlng,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                    });
                    var infowindow = new google.maps.InfoWindow();
                    for (var i = 0; i < markerLocation.length; i++) {

                        var newMarker = new google.maps.Marker({
                            position: new google.maps.LatLng(markerLocation[i][1], markerLocation[i][2]),
                            map: map,
                            title: markerLocation[i][0]
                        });
                        google.maps.event.addListener(newMarker, 'click', (function (newMarker, i) {
                            return function () {
                                infowindow.setContent(markerLocation[i][0]);
                                infowindow.open(map, newMarker);
                            }
                        })(newMarker, i));
                        markers.push(newMarker);
                    }

                },
                dateToString: function (date) {
                    var d = new Date(date),
                            month = '' + (d.getMonth() + 1),
                            day = '' + d.getDate(),
                            year = d.getFullYear();
                    if (month.length < 2)
                        month = '0' + month;
                    if (day.length < 2)
                        day = '0' + day;
                    return [year, month, day].join('-');
                },
                //In case for maintenance and code cleanup, FUTURE_USE (Can See usage at maklumat_perjawatan.js);

                //General Status
                GSTS_PENDING: 1,
                GSTS_VERIFIED: 2,
                GSTS_VERIFIED2: 3,
                GSTS_APPROVED: 4,
                GSTS_APPROVED2: 5,
                GSTS_REJECTED: 6,
                GSTS_EXPIRED: 7,
                GSTS_SUSPENDED: 8,
                GSTS_TERMINATED: 9,
                GSTS_DELETED: 10,
                GSTS_BLACKLISTED: 11,
                GSTS_AMENDED: 12,
                GSTS_ACCEPTED: 13,
                GSTS_ONGOING: 14,
                GSTS_NEW: 15,
                GSTS_OPENED: 16,
                GSTS_CLOSED: 17,
                GSTS_OPERATION_APPROVAL: 18,
                GSTS_PROVISIONAL: 19,
                GSTS_FULL_TERM: 20,
                GSTS_ACTIVE: 21,
                GSTS_INACTIVE: 22,
                GSTS_SIGNED_ON: 23,
                GSTS_SIGNED_OFF: 24,
                GSTS_VALID: 25,
                GSTS_INVALID: 26,
                GSTS_REVIEWED: 27,
                GSTS_KEEP_IN_VIEW: 28,
                GSTS_LOCAL: 29,
                GSTS_FOREIGN: 30,
                GSTS_RENEW: 31,
                GSTS_LOST_REPLACEMENT: 32,
                GSTS_DAMAGE_REPLACEMENT: 33,
                GSTS_PAID: 34,
                GSTS_UNPAID: 35,
                GSTS_IN_USE: 36,
                GSTS_NOT_IN_USE: 37,
                GSTS_ESTIMATED: 38,
                GSTS_ARRIVED: 39,
                GSTS_CANCELED: 40,
                GSTS_DECLARED: 41,
                GSTS_DEPARTED: 42,
                GSTS_ASSIGNED: 43,
                GSTS_INSPECTED: 44,
                GSTS_NOT_ASSIGNED: 45,
                GSTS_UNDER_INSPECTION: 46,
                GSTS_COMPLETED: 47,
                GSTS_RETURNED: 48,
                GSTS_AVAILABLE: 49,
                GSTS_NOT_AVAILABLE: 50,
                GSTS_PASS: 51,
                GSTS_FAIL: 52,
                GSTS_CLOCKIN: 1,
                GSTS_CLOCKOUT: 2,
                GSTS_CORRECTIVE_NEEDED: 53,
                //Workflow Status
                WORKFLOW_PENDING: 1,
                WORKFLOW_COMPLETED: 2,
                WORKFLOW_CANCELLED: 3,
                WORKFLOW_REJECTED: 4,
                WORKFLOW_RETURNED: 5,
                WORKFLOW_IN_PROGRESS: 6,
                //Vessel Status
                VSTS_NEW: 1,
                VSTS_ACTIVE1: 2,
                VSTS_ACTIVE2: 3,
                VSTS_EXPIRED: 4,
                VSTS_SUSPENDED: 5,
                VSTS_TERMINATED: 6,
                VSTS_DELETED: 7,
                VSTS_BLACKLISTED: 8,
                VSTS_REJECTED: 9,
                //Language Setting
                EN: 1,
                MY: 2
            };
        }]);
    //INCLUDE THIS SERVICE IF HAVE PAYMENT
    app.factory('paymentService', ['apiURL', '$http', '$window', 'baseURL', '$location', 'sharedFunc', '$rootScope', '$cookies', function (apiURL, $http, $window, baseURL, $location, sharedFunc, $rootScope, $cookies) {

            return {
                openPayment: function (keyList, newCarts) {
                    var wf = sharedFunc.queryString('wf', $location.absUrl());
                    var seq = sharedFunc.queryString('seq', $location.absUrl());
                    var sf = sharedFunc.queryString('sf', $location.absUrl());
                    var data = '';
                    for (var i = 0; i < keyList.length; i++) {
                        data = data + '&' + keyList[i].Name + '=' + keyList[i].Value;
                    }

                    if (sf !== undefined) {
                        return $window.location.href = baseURL + '/general/checkout?wf=' + wf + '&seq=' + seq + '&sf=' + sf + data;
                    } else {
                        return $window.location.href = baseURL + '/general/checkout?wf=' + wf + '&seq=' + seq + data;
                    }
                },
                triggerPayment: function (wf_status) {
                    var keyList = [],
                            params = $location.absUrl().substring(1).split('&');
                    for (var i = params.length - 1; i > 0; i--) {
                        var key = params[i].split('=');
                        var newKey = {
                            Name: key[0],
                            Value: key[1]
                        };
                        if (newKey.Name === 'seq') {
                        } else if (newKey.Name === 'sf') {
                        } else {
                            keyList.push(newKey);
                        }
                    }
                    console.log(keyList);
                    return $rootScope.triggerWorkflow(wf_status, keyList);
                },
                getCarts: function (id) {
                    if (id !== undefined) {

                        var data = {
                            SecurityToken: $cookies.get('MMDIS_TOKEN')
                        };
                        $http({
                            method: 'POST',
                            url: apiURL + "/", //WAITING FOR API
                            data: JSON.stringify(data),
                            headers: {
                                'Content-Type': 'application/json; charset=utf-8'
                            }
                        }).then(function onSuccess(response) {
                            var res = response.data;
                            if (res.Success) {
                                //                    console.log(res);
                                return response.data.cartList;
                            } else {
                                console.log(res);
                            }
                        })
                                .catch(function onError(response) {
                                    //                    console.log(response);
                                });
                    }
                },
                parseDate: function (strDate) {
                    return new Date(strDate);
                },
                formatTime: function (strTime) {
                    return new Date(strTime).getHours() + ":" + new Date(strTime).getMinutes() + ":" + new Date(strTime).getSeconds();
                },
                getHourList: function () {
                    var hourList = [];
                    for (var i = 0; i < 24; i++) {
                        hourList.push(('0' + i).slice(-2));
                    }
                    return hourList;
                },
                getHourList2: function () {
                    var hourList = [];
                    for (var i = 0; i < 24; i++) {
                        hourList.push(('0' + i).slice(-2));
                    }
                    return hourList;
                },
                getMinuteList: function () {
                    var minuteList = [];
                    for (var i = 0; i < 60; i++) {
                        minuteList.push(('0' + i).slice(-2));
                    }
                    return minuteList;
                },
                getMinuteList2: function () {
                    var minuteList = [];
                    for (var i = 0; i < 60; i++) {
                        minuteList.push(('0' + i).slice(-2));
                    }
                    return minuteList;
                }
            };
        }]);
})();