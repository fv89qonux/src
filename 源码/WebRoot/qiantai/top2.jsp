<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>

  </head>
  
  <body>
    <ul class="nav-main">
		<li><a href="<%=path %>/qiantai/default.jsp" style="font-family: 微软雅黑;">车次信息</a></li>
		<li><a href="<%=path %>/qiantai/user/userReg.jsp" style="font-family: 微软雅黑;">用户注册</a></li>
		<li><a href="<%=path %>/gonggaoAll.action" style="font-family: 微软雅黑;">系统公告</a></li>
		<li><a href="<%=path %>/qiantai/checi/checiSea.jsp" style="font-family: 微软雅黑;">车次查询</a></li>
		
		<c:if test="${sessionScope.userType!=1}"> 
		<li><a href="<%=path %>/qiantai/user/userLogin.jsp" style="font-family: 微软雅黑;">用户登录</a></li>
		</c:if>
		
		<c:if test="${sessionScope.userType==1}"> 
        <li><a href="#" style="font-family: 微软雅黑;width: 160px;">欢迎你：${sessionScope.user.loginname }</a></li>
        <li><a href="<%=path %>/userLogout.action" style="font-family: 微软雅黑;margin-left: 50px;">注销退出</a></li>
        <li><a href="<%=path %>/qiantai/user/userXinxi.jsp" style="font-family: 微软雅黑;margin-left: 60px;">我的信息</a></li>
        <li><a href="<%=path %>/yudingMine.action" style="font-family: 微软雅黑;margin-left: 60px;">我的订票</a></li>
		</c:if>
		
		
		<!-- <li id="li-1"><a href="#" style="font-family: 微软雅黑;">交易中心1</a></li>
		<li id="li-2"><a href="#" style="font-family: 微软雅黑;">信息披露</a></li> -->
        
    </ul>
    <!-- <div class="navlist">
        <div id="box-1" class="hidden-box hidden-loc-center">
            <ul>
                <li><a href="#">11</a></li>
                <li><a href="#">11</a></li>
            </ul>
        </div>
        <div id="box-2" class="hidden-box hidden-loc-us">
            <ul>
                <li><a href="#">11</a></li>
                <li><a href="#">11</a></li>
            </ul>
        </div>
    </div> -->
  </body>
</html>
