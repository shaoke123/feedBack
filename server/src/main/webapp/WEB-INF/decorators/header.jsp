<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="ch" uri="http://www.chanhong.com" %>
<div class="topNav" >
    <div class="wrapper" >
        <div class="welcome"><a href="#" title=""><img src="${pageContext.request.contextPath}/images/userPic.png" alt="" /></a><span>Howdy, Eugene!</span></div>
        <div class="userNav">
            <ul>
                <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/profile.png" alt="" /><span>Profile</span></a></li>
                <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/tasks.png" alt="" /><span>Tasks</span></a></li>
                <li class="dd"><a title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/messages.png" alt="" /><span>Messages</span><span class="numberTop">8</span></a>
                    <ul class="userDropdown">
                        <li><a href="#" title="" class="sAdd">new message</a></li>
                        <li><a href="#" title="" class="sInbox">inbox</a></li>
                        <li><a href="#" title="" class="sOutbox">outbox</a></li>
                        <li><a href="#" title="" class="sTrash">trash</a></li>
                    </ul>
                </li>
                <li><a href="#" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/settings.png" alt="" /><span>Settings</span></a></li>
                <li><a href="login.html" title=""><img src="${pageContext.request.contextPath}/images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
            </ul>
        </div>
    </div>
</div>
