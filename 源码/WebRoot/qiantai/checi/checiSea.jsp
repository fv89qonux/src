<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
	
	<script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>
	
	<style rel="stylesheet" type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>
	
	<script type="text/javascript"> 
	        
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
        	<form action="<%=path %>/checiRes.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="1" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/img/wbg.gif" class='title'><span>&nbsp;</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" height="30">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						         始发站点：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="shifazhan" size="40"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="30">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						         终点站点：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="daodazhan" size="40"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="30">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						         车票日期：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input name="piaoshijian" readonly="readonly" class="Wdate"  type="text" 
						        onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'})"
						        value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date(new Date().getTime()+1*24*60*60*1000)) %>"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						       <input type="submit" value="提交" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
        </div>
        <br/><br/><br/><br/>
        
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
