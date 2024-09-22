<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link type="text/css" href="<%=path %>/css/index.css" rel="stylesheet"/>
	<link type="text/css" href="<%=path %>/css/style.css" rel="stylesheet"/>
	<link type="text/css" href="<%=path %>/css/list.css" rel="stylesheet"/>
	
	<script type="text/javascript" src="<%=path %>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=path %>/js/main.js"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery.flexslider-min.js"></script>
	
	<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
	
	<script type="text/javascript"> 
	     function zhuce()
	     {
	        if(document.form1.loginname.value=="")
	        {
	            alert("请输入账号");
	            return false;
	        }
	        if(document.form1.loginpw.value=="")
	        {
	            alert("请输入密码");
	            return false;
	        }
	        document.form1.submit();
	     }
	     
	     function up()
	     {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	     }
    </script>
	
	
  </head>
  
  <body>
<div class="top_bg">
	<jsp:include flush="true" page="/qiantai/top1.jsp"></jsp:include>
</div>

 
<div class="nav">
	<jsp:include flush="true" page="/qiantai/top2.jsp"></jsp:include>
</div>





 
 
<div class="main_bg">
	<div class="main">
    	<!-- 广告轮播 -->
    	<!-- <div class="main_banner">
        	<div class="flexslider">
                &nbsp;
            </div>
        </div> -->
        <!-- 广告轮播 -->
        
  
        <!-- <div class="main_04">
         	<div class="main_sshq_top">
                 <div class="main_sshq_title">
                     <div class="main_tzgg_title_01">实时行情</div>
                 </div>
            </div>
            <div class="main_sshq_iframe" style="height: 20px;">
               &nbsp;
            </div>
        </div> -->
  
        
    	<div class="main_02">
        	<form action="<%=path %>/userReg.action" name="form1" method="post">
	                     <table align="left" border="0" cellpadding="4" cellspacing="4">
							<tr align='center'>
								<td style="width: 50px;" align="center">
									账号：										    
								</td>
								<td align="left">
									<input type="text" name="loginname" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									密码：										    
								</td>
								<td align="left">
									<input type="password" name="loginpw" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									姓名：										    
								</td>
								<td align="left">
									<input type="text" name="name" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									性别：										    
								</td>
								<td align="left">
									<select name="sex" style="width: 120px;"><option value="男">男</option><option value="女">女</option></select>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									年龄：										    
								</td>
								<td align="left">
									<input type="text" name="age" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									住址：										    
								</td>
								<td align="left">
									<input type="text" name="address" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									电话：										    
								</td>
								<td align="left">
									<input type="text" name="tel" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
								<td style="width: 50px;" align="center">
									邮箱：										    
								</td>
								<td align="left">
									<input type="text" name="email" style="width: 200px;"/>
								</td>
							</tr>
							<tr align='center'>
							   <td style="width: 50px;" align="center"></td>
							   <td align="left">
							      <input type="button" value="注册" style="width: 60px;height: 22px;" onclick="zhuce();">
	                              <input type="reset" value="重置" style="width: 60px;height: 22px;">
							   </td>
							</tr>
						 </table>
                     </form>
                     
        </div>
        <br/><br/><br/><br/><br/><br/><br/>
        
        <div class="main_07" style="margin-left: 12px;"><img src="<%=path %>/images/footer_01.png" width="1025"/></div>
      
        <jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>
        
    </div>
</div>


 
 
 
 
 

<!-- 自动弹出的窗口 -->
<!--<script type="text/javascript" src="<%=path %>/js/lanrenzhijia.js"></script>
<div class="box-lanrenzhijia" id="pop">
	<div class="pop_title">
		<div class="pop_title_left">
		 	<strong>www.znypjy.com</strong>
		</div>
		<div class="pop_title_right">
			<img src="<%=path %>/images/img01.gif" id="contraction" />
			<img src="<%=path %>/images/img02.gif" onClick="closeDiv()" />
		</div>
    </div>
    <div class="pop_Content">
        <p><a href="">22</a></p>
        <p><a href="">33</a></p>
     </div>
</div>-->
<!-- 自动弹出的窗口 -->
</body>
</html>
