<%-- 
    Document   : js
    Created on : Oct 2, 2017, 11:47:08 PM
    Author     : Firdhaus
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="date" class="java.util.Date" />
 
<script src="<c:url value="/content/js/moment.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-base64-upload.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-cookies.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-datatables.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-growl.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/js/angular-sanitize.js" />" type="text/javascript"></script>
<!--<script src="<c:url value="/content/js/ui-bootstrap-tpls-2.5.0.min.js" />" type="text/javascript"></script>-->
<script src="<c:url value="/content/js/bootstrap-datetimepicker.min.js" />" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCabbU6jE97AY-mbyPJMCRGB1U6V3rpHkM" type="text/javascript"></script>


<script src="<c:url value="/angular/app.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/services/appService.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/controllers/appController.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/security.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/services/securityService.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/controllers/securityController.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/content/lib/Chart.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/amcharts.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/ammap.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/amstock.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/angular-animate.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/angular-chart.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/angular-chartist.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/angular-morris-chart.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/angular-progress-button-styles.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/angular-route.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/angular-slimscroll.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/angular-toastr.tpls.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/angular-touch.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/angular-ui-router.js" />" type="text/javascript"></script>
<!--<script src="<c:url value="/content/lib/angular.js" />" type="text/javascript"></script>-->
<script src="<c:url value="/content/lib/bootstrap-select.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/bootstrap-switch.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/bootstrap-tagsinput.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/chartist.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/dropdown.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/eve.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/fullcalendar.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/funnel.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/gantt.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/ion.rangeSlider.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/jquery-ui.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/jquery.easing.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/jquery.easypiechart.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/jquery.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/jstree.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/leaflet-src.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/mocha.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/moment.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/morris.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/ngJsTree.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/pie.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/rangy-classapplier.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/rangy-core.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/rangy-highlighter.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/rangy-selectionsaverestore.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/rangy-serializer.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/rangy-textrange.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/raphael.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/responsive.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/select.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/serial.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/smart-table.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/sortable.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/textAngular-sanitize.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/textAngular.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/textAngularSetup.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/ui-bootstrap-tpls.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/worldLow.js" />" type="text/javascript"></script>
<script src="<c:url value="/content/lib/xeditable.js" />" type="text/javascript"></script>


<script src="<c:url value="/angular/theme/theme.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/components.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/inputs/inputs.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/theme.config.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/theme.configProvider.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/theme.constants.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/theme.run.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/theme.service.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/theme/directives/animatedChange.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/directives/autoExpand.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/directives/autoFocus.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/directives/includeWithScope.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/directives/ionSlider.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/directives/ngFileSelect.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/directives/scrollPosition.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/directives/trackWidth.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/directives/zoomIn.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/theme/services/baProgressModal.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/services/baUtil.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/services/fileReader.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/services/preloader.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/services/stopableInterval.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/theme/components/toastrLibConfig.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/backTop/backTop.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/backTop/lib/jquery.backTop.min.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baPanel/baPanel.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baPanel/baPanel.service.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baPanel/baPanelBlur.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baPanel/baPanelBlurHelper.service.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baPanel/baPanelSelf.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baSidebar/baSidebar.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baSidebar/baSidebar.service.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baSidebar/BaSidebarCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baSidebar/baSidebarHelpers.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baWizard/baWizard.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baWizard/baWizardCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/baWizard/baWizardStep.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/contentTop/contentTop.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/msgCenter/msgCenter.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/msgCenter/MsgCenterCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/widgets/widgets.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/pageTop/pageTop.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/components/progressBarRound/progressBarRound.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/theme/filters/image/appImage.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/filters/image/kameleonImg.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/filters/image/profilePicture.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/filters/text/removeHtml.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/theme/inputs/baSwitcher/baSwitcher.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/pages/form/form.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/maps/maps.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/ui.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/grid/grid.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/tabs/tabs.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/pages/pages.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/pages/charts/charts.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/amCharts/amCharts.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/chartist/chartist.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/chartJs/chartJs.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/morris/morris.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/chartist/chartistCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/chartJs/chartJs1DCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/chartJs/chartJs2DCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/chartJs/chartJsWaveCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/morris/morrisCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/amCharts/areaChart/AreaChartCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/amCharts/barChart/BarChartCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/amCharts/combinedChart/combinedChartCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/amCharts/funnelChart/FunnelChartCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/amCharts/ganttChart/ganttChartCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/amCharts/lineChart/LineChartCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/charts/amCharts/pieChart/PieChartCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/pages/components/components.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/mail/mail.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/timeline/timeline.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/tree/tree.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/mail/mailMessages.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/mail/MailTabCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/timeline/TimelineCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/tree/treeCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/mail/composeBox/composeBoxCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/mail/composeBox/composeModal.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/mail/detail/MailDetailCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/components/mail/list/MailListCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/pages/dashboard/dashboard.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/blurFeed/blurFeed.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/blurFeed/BlurFeedCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/calendar/dashboardCalendar.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/dashboardCalendar/dashboardCalendar.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/dashboardCalendar/DashboardCalendarCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/dashboardLineChart/dashboardLineChart.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/dashboardLineChart/DashboardLineChartCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/dashboardMap/dashboardMap.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/dashboardMap/DashboardMapCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/dashboardPieChart/dashboardPieChart.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/dashboardPieChart/DashboardPieChartCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/dashboardTodo/dashboardTodo.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/dashboardTodo/DashboardTodoCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/pieCharts/dashboardPieChart.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/popularApp/popularApp.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/trafficChart/trafficChart.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/trafficChart/TrafficChartCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/weather/weather.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/dashboard/weather/WeatherCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/pages/form/wizard/wizrdCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/form/inputs/widgets/datePickers/datepickerCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/form/inputs/widgets/datePickers/datepickerpopupCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/form/inputs/widgets/oldSelect/OldSelectpickerPanelCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/form/inputs/widgets/oldSelect/selectpicker.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/form/inputs/widgets/oldSwitches/OldSwitchPanelCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/form/inputs/widgets/oldSwitches/switch.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/form/inputs/widgets/select/GroupSelectpickerOptions.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/form/inputs/widgets/select/SelectpickerPanelCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/form/inputs/widgets/switches/SwitchDemoPanelCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/form/inputs/widgets/tagsInput/tagsInput.directive.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/pages/maps/google-maps/GmapPageCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/maps/leaflet/LeafletPageCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/maps/map-bubbles/MapBubblePageCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/maps/map-lines/MapLinesPageCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/pages/profile/profile.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/profile/ProfileModalCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/pages/tables/tables.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/tables/TablesPageCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>

<script src="<c:url value="/angular/pages/ui/alerts/alerts.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/buttons/buttons.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/icons/icons.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/modals/modals.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/notifications/notifications.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/panels/panels.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/progressBars/progressBars.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/slider/slider.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/typography/typography.module.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/buttons/ButtonPageCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/icons/IconsPageCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/modals/ModalsPageCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/notifications/NotificationsPageCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/modals/notifications/NotificationsCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>
<script src="<c:url value="/angular/pages/ui/modals/progressModal/ProgressModalCtrl.js?r=" /><fmt:formatDate value="${date}" pattern="yyyymmddhhmmss" />" type="text/javascript"></script>



