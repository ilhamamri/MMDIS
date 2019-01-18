<%-- 
    Document   : sidebar
    Created on : Oct 2, 2017, 11:40:11 PM
    Author     : Firdhaus
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Loaders -->
<div class="loader" ng-show="spinnerShow">
    <div class="square-spin">
        <img class="square-spin" src="<c:url value='/content/images/Liquid-1s-200px.svg' />" width="70" alt="" />
    </div>
</div>

<div growl></div>

<!--left-fixed -navigation-->
<div class=" sidebar" role="navigation">
    <div class="navbar-collapse">
        <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="<c:url value='/user/application' />"><i class="fa fa-folder-open nav_icon"></i>{{'list_of_applicants'| i18n }}</a>
                </li>
                <li>
                    <a href="<c:url value='/main_module' />"><i class="fa fa-home nav_icon"></i>{{'home'| i18n}}</a>

                </li>
                <!--                <li>
                                    <a href="#"><i class="fa fa-ship nav_icon"></i>Perkapalan <span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level collapse">
                                        <li>
                                            <a href="<c:url value='/ship/home' />">Permohonan Baru</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-user nav_icon"></i>Pelaut <span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level collapse">
                                        <li>
                                            <a href="<c:url value='/seafarer/home' />">Permohonan Baru</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-anchor nav_icon"></i>Pelabuhan <span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level collapse">
                                        <li>
                                            <a href="<c:url value='/port/home' />">Permohonan Baru</a>
                                        </li>
                                    </ul>
                                </li>  
                                <li>
                                    <a href="#"><i class="fa fa-flag-checkered nav_icon"></i>Pelayaran <span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level collapse">
                                        <li>
                                            <a href="<c:url value='/sail/home' />">Permohonan Baru</a>
                                        </li>
                                    </ul>
                                </li>  -->
                <li>
                    <a href="#"><i class="fa fa-cogs nav_icon"></i>{{'configuration'| i18n}} <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li>
                            <a href="<c:url value='/config/module' />">{{'module'| i18n}}</a>
                        </li>
                        <li>
                            <a href="<c:url value='/config/survey' />">{{'survey'| i18n}}</a>
                        </li>
                        <li>
                            <a href="<c:url value='/config/unit' />">{{'unit'| i18n}}</a>
                        </li>
                        <li>
                            <a href="<c:url value='/config/user' />">{{'user'| i18n}}</a>
                        </li>
                        <li>
                            <a href="<c:url value='/config/workflow' />">{{'workflow'| i18n}}</a>
                        </li>
                    </ul>
                    <!-- /nav-second-level -->
                </li>
            </ul>
            <!-- //sidebar-collapse -->
        </nav>
    </div>
</div>
<!--left-fixed -navigation-->