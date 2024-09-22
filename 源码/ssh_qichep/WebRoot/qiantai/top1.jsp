<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>

  </head>
  
  <body>
        <div class="top">
	    	<div class="top_logo">
	        	<div align="right">&nbsp;</div>
	            <div style="font-family: 微软雅黑;font-size: 26px;margin-top: 20px;width: 500px;"><%-- <img src="<%=path %>/images/logo.png" /> --%>小型汽车票务管理系统台</div>
	        </div>
	        <div class="top_weixin">
	            <div style="margin-top: 60px;margin-right: 20px;">
	                <!--  登录注册 -->
	                 <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)</SCRIPT><SPAN id=clock></SPAN>                           
	            </div>
	        </div> 
	        <div class="top_searchtel">
	            <!-- <div class="top_search">
	                <input name="" type="text" value="请输入你想搜索的内容" 
	                   onFocus="if(this.value=='请输入你想搜索的内容'){this.value='';}"  
	                   onblur="if(this.value==''){this.value='请输入你想搜索的内容';}" />
	                <button type="submit"></button>
	            </div> -->
	        </div>    
	    </div>
  </body>
</html>
