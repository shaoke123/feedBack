<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="ch" uri="http://www.chanhong.com" %>
<html>
<head>
    <title>后台管理平台</title>
    <script type="text/javascript">

        function userDeleteConfirm() {
            return confirm('确定要停用该用户吗?');
        }

        function userEnableConfirm() {
            return confirm('确定要激活该用户吗?');
        }
    </script>
</head>
<body>
<div class="action"style="margin-top: 50px;">
    &nbsp;
</div>
<!-- Main content wrapper -->
<div class="wrapper">
    <div>
        <div  style="margin-top:32px;float: left;width: 100px;height:50px;display: inline-block;vertical-align: text-bottom;">
            <a class="wContentButton bluewB" title="" href="${pageContext.request.contextPath}/backend/userform.html">添加用户</a>
        </div>
    <div class="searchWidget" style="float:right;">
        <form action="${pageContext.request.contextPath}/backend/useroverview.html" method="post">
            <span><label>姓名：</label><input type="text" placeholder="Enter search text..." name="filername" value="${paging.name}"></span>
            <input type="submit" value="" name="find" onclick="this.form.submit()";/>
        </form>
    </div>
    </div>

    <div class="widget">
        <div class="title"><img src="images/icons/dark/frames.png" alt="" class="titleIcon"/><h6>用户管理</h6>
        </div>
        <table cellpadding="0" cellspacing="0" width="100%" class="sTable">
            <thead>
            <tr>
                <td>&nbsp;&nbsp;姓名</td>
                <td>编号</td>
                <td>密码</td>
                <td>联系方式</td>
                <td>状态</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <c:set var="turns" value="true"/>
            <c:forEach items="${users}" var="user">
                <c:set var="color" value="${turns ? 'r1' :'r2'}"/>
                <tr class="${color}" onmouseover="this.className='over'" onmouseout="this.className='${color}'">
                    <c:set var="turns" value="${!turns}"/>
                    <td>&nbsp;&nbsp;${user.name}</td>
                    <td>${user.username} </td>
                    <td>${user.password}</td>
                    <td>${user.contactWay}</td>
                    <td>
                        <c:if test="${user.enabled}">
                            在用
                        </c:if>
                        <c:if test="${!user.enabled}">
                            停止使用
                        </c:if>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/backend/userform.html?userId=${user.id}&filername=${filername}&current=${current}">
                            <button class="thoughtbot">编辑</button>
                        </a>

                        <c:if test="${user.username != 'qsadmin'}">
                            <c:if test="${user.enabled}">
                                <a href="${pageContext.request.contextPath}/backend/userchangeenable.html?userId=${user.id}&filername=${filername}&current=${current}"
                                   onclick="return userDeleteConfirm();">
                                    <button class="thoughtbot">停用</button>
                                </a>
                            </c:if>
                            <c:if test="${!user.enabled}">
                                <a href="${pageContext.request.contextPath}/backend/userchangeenable.html?userId=${user.id}&filername=${filername}&current=${current}"
                                   onclick="return userEnableConfirm();">
                                    <button class="thoughtbot">激活</button>
                                </a>
                            </c:if>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>