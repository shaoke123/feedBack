<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
    <title>Crown - premium responsive admin template for backend systems</title>
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.orderBars.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.pie.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.flot.resize.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/uniform.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/s/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/calendar.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/elfinder.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/charts/chart.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('li.forms a ').click(function (e) {
                var dropDown = $(this).parent().next();
                $('.sub').not(dropDown).slideUp('slow');
                dropDown.slideToggle('slow');
                e.preventDefault();
            })

        });
    </script>

   </head>

<body>

<!-- Left side content -->
<div id="leftSide">
    <div class="logo"><a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png" alt=""/></a>
    </div>

    <div class="sidebarSep"></div>

    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="dash"><a href="index.html" title="" class="active"><span>首页</span></a></li>
        <li class="forms"><a href="${pageContext.request.contextPath}/backend/clientuserfeedbackoverview.html" title=""
                             class="exp"><span>用户反馈</span><strong>2</strong></a>
            <ul class="sub">
                <li><a href="${pageContext.request.contextPath}/backend/clientuserfeedbackoverview.html"
                       title="">反馈信息</a></li>
                <li><a href="${pageContext.request.contextPath}/backend/clientuserfeedback.html" title="">反馈统计</a></li>
            </ul>
        </li>
        <li class="ui"><a href="${pageContext.request.contextPath}/backend/clientusercollector.html"
                          title=""><span>收视统计</span></a></li>
        <li class="tables"><a href="${pageContext.request.contextPath}/backend/clientlocationoverview.html" title=""
                              class="exp"><span>用户定位</span></a></li>

        <li class="forms"><a href="${pageContext.request.contextPath}/backend/useroverview.html" title=""
                              class="exp"><span>系统设置</span><strong>3</strong></a>
            <ul class="sub">
                <li><a href="${pageContext.request.contextPath}/backend/useroverview.html" title="">用户管理</a></li>
                <li><a href="${pageContext.request.contextPath}/backend/appoverview.html" title="">应用管理</a></li>
                <li><a href="${pageContext.request.contextPath}/backend/tvchannelinfooverview.html" title="">频道管理</a>
                </li>
            </ul>
        </li>
    </ul>
</div>


<!-- Right side -->
<div id="rightSide">
    <jsp:include page="/WEB-INF/decorators/header.jsp"></jsp:include>
    <decorator:body/>


</div>


</div>

<div class="clear"></div>

</body>
</html>