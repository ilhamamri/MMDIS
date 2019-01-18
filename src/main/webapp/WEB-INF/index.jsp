<%-- 
    Document   : index
    Created on : Jan 17, 2019, 4:04:02 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="bit" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html ng-app="MMDIS" ng-controller="appCtrl">
    <head>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900italic,900&subset=latin,greek,greek-ext,vietnamese,cyrillic-ext,latin-ext,cyrillic' rel='stylesheet' type='text/css'>
        <title>JSP Page</title>
        <bit:css />
        <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
        <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon-96x96.png">
    </head>
    <body>
        <main class="auth-main">
            <div class="auth-block">
                <h1>Sign in to Blur Admin</h1>
                <a href="reg.html" class="auth-link">New to Blur Admin? Sign up!</a>

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
                            <button type="submit" class="btn btn-default btn-auth">Sign in</button>
                            <a href class="forgot-pass">Forgot password?</a>
                        </div>
                    </div>
                </form>

                <div class="auth-sep"><span><span>or Sign in with one click</span></span></div>

                <div class="al-share-auth">
                    <ul class="al-share clearfix">
                        <li><i class="socicon socicon-facebook" title="Share on Facebook"></i></li>
                        <li><i class="socicon socicon-twitter" title="Share on Twitter"></i></li>
                        <li><i class="socicon socicon-google" title="Share on Google Plus"></i></li>
                    </ul>
                </div>
            </div>
        </main>
        <bit:js />
        <bit:angularjs />
    </body>
</html>
