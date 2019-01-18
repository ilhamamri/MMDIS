<%-- 
    Document   : login
    Created on : Jan 18, 2019, 11:34:09 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="bit" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html ng-app="MMDIS">
    <head>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900italic,900&subset=latin,greek,greek-ext,vietnamese,cyrillic-ext,latin-ext,cyrillic' rel='stylesheet' type='text/css'>
        <title>MMDIS - USER LOGIN</title>
        <bit:css />
        <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
        <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon-96x96.png">
    </head>
    <body>
        <main class="auth-main" ng-controller="appCtrl">
            <div class="auth-block">
                <h1>MALAYSIA MARINE DEPARTMENT INFORMATION SYSTEM</h1>
                <a href="reg.html" class="auth-link">New to MMDIS? Register New User!</a>
                {{test2}}{{constantURL.baseURL}}
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>

                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <a href class="forgot-pass">Forgot password?</a>
                        </div>
                    </div>
                </form>

                <div class="al-share-auth">
                    <button type="submit" class="btn btn-default btn-auth">Login</button>
                </div>
            </div>
        </main>
        <bit:js />
        <bit:angularjs />
    </body>
</html>
