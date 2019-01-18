<%-- 
    Document   : header
    Created on : Oct 2, 2017, 11:40:29 PM
    Author     : Firdhaus
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- header-starts -->
<div class="sticky-header header-section " ng-init="getUserInfo()">
    <div class="header-left">
        <!--toggle button start-->
        <button id="showLeftPush"><i class="fa fa-bars"></i></button>
        <!--toggle button end-->
        <!--logo -->
        <div class="logo">
            <a href="<c:url value='/' />">
                <h1>MMDIS</h1>
            </a>
        </div>
        <!--//logo-->
        <div class="clearfix"> </div>
    </div>
    <div class="header-right" ng-controller="MainController" ng-init="getPendingMyAction()">
        <div class="profile_details_left">
            <div class="profile_menu">
                <br>
                <h5><strong><a href="#" ng-click="changeLang(userInfo.UserInfo.UserId, sharedFunc.EN)">EN</a> | <a href="#" ng-click="changeLang(userInfo.UserInfo.UserId, sharedFunc.MY)">MY</a></strong></h5>
            </div>
        </div>
        <div class="profile_details_left">
            <div class="profile_menu">
                <br>
                <h5><strong>{{serverDate}}, {{serverTime}}</strong></h5>
                <!--                Pc Time: {{localMachineTime}}-->
            </div>
        </div>
        <div class="profile_details_left"><!--notifications of menu start -->
            <ul class="nofitications-dropdown">
                <li class="dropdown head-dpdn" ng-show="pendingItems.PendingItemList.length > 0">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">{{pendingItems.PendingItemList.length}}</span></a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="notification_header">
                                <h3>You have {{pendingItems.PendingItemList.length}} new notification</h3>
                            </div>
                        </li>
                        <li ng-repeat="item in pendingItems.PendingItemList">
                            <a href="#" ng-click="openForm(item.Id, item.Sequence)">
                                <div class="notification_desc">
                                    <p class="noti-refno"><span>&#35;{{item.RefNo}}</span>: {{item.WFName}}</p>
                                    <p class="noti-msg">{{item.StepName}}</p>
                                </div>
                                <div class="clearfix"></div>	
                            </a>
                        </li>
                        <li>
                            <div class="notification_bottom">
                                <a href="#">See all notifications</a>
                            </div> 
                        </li>
                    </ul>
                </li>	
                <!--                                <li class="dropdown head-dpdn">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">15</span></a>
                                                    <ul class="dropdown-menu">
                                                        <li>
                                                            <div class="notification_header">
                                                                <h3>You have 8 pending task</h3>
                                                            </div>
                                                        </li>
                                                        <li><a href="#">
                                                                <div class="task-info">
                                                                    <span class="task-desc">Database update</span><span class="percentage">40%</span>
                                                                    <div class="clearfix"></div>	
                                                                </div>
                                                                <div class="progress progress-striped active">
                                                                    <div class="bar yellow" style="width:40%;"></div>
                                                                </div>
                                                            </a></li>
                                                        <li><a href="#">
                                                                <div class="task-info">
                                                                    <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                                                                    <div class="clearfix"></div>	
                                                                </div>
                                                                <div class="progress progress-striped active">
                                                                    <div class="bar green" style="width:90%;"></div>
                                                                </div>
                                                            </a></li>
                                                        <li><a href="#">
                                                                <div class="task-info">
                                                                    <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                                                                    <div class="clearfix"></div>	
                                                                </div>
                                                                <div class="progress progress-striped active">
                                                                    <div class="bar red" style="width: 33%;"></div>
                                                                </div>
                                                            </a></li>
                                                        <li><a href="#">
                                                                <div class="task-info">
                                                                    <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                                                                    <div class="clearfix"></div>	
                                                                </div>
                                                                <div class="progress progress-striped active">
                                                                    <div class="bar  blue" style="width: 80%;"></div>
                                                                </div>
                                                            </a></li>
                                                        <li>
                                                            <div class="notification_bottom">
                                                                <a href="#">See all pending tasks</a>
                                                            </div> 
                                                        </li>
                                                    </ul>
                                                </li>	-->
            </ul>
            <div class="clearfix"> </div>
        </div>
        <!--notification menu end -->

        <div class="profile_details">	
            <ul>
                <li class="dropdown profile_details_drop">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <div class="profile_img">	
                            <!--<span class="prfil-img"><img width="50" src="<//c:url value='/content/images/no-profile.jpeg' />" alt=""> </span>--> 
                            <span class="prfil-img"><img width="50" src="<c:url value='/content/images/cartoon_profile.jpg' />" alt=""> </span> 
                            <div class="user-name">
                                <p>{{userInfo.UserInfo.Username}}</p>
                                <span>{{'administrator'| i18n}}</span>
                            </div>
                            <i class="fa fa-angle-down lnr"></i>
                            <i class="fa fa-angle-up lnr"></i>
                            <div class="clearfix"></div>	
                        </div>	
                    </a>
                    <ul class="dropdown-menu drp-mnu">
                        <li> 
                            <a href="#">
                                <div class="profile_menu">
                                    <i class="fa fa-cog"></i> {{'settings'| i18n}}</div>
                            </a> 

                        </li> 
                        <li> <a href="#">
                                <div class="profile_menu">
                                    <i class="fa fa-user"></i> {{'profile'| i18n}} 
                                </div>
                            </a>
                        </li> 
                        <li> 

                            <a href="{{baseURL}}/user/login"><div class="profile_menu"><i class="fa fa-sign-out"></i> {{'logout'| i18n}}
                                </div>
                            </a> 
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="clearfix"> </div>				
    </div>
    <div class="clearfix"> </div>	
</div>
<!-- //header-ends -->