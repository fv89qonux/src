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
	
	<style rel="stylesheet" type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>
	
	<script type="text/javascript"> 
	        function yuding(checiId)
	        {
	            <s:if test="#session.userType!=1">
				     alert("请先登录");
				</s:if>
				<s:if test="#session.userType==1">
				     var url="<%=path %>/qiantai/yuding/yudingAdd.jsp?checiId="+checiId;
	                 var ret = window.open(url,"","dialogWidth:500px; dialogHeight:250px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
				     window.location.reload();
				</s:if>
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
        	<table border="0" width="100%" cellpadding="15" cellspacing="15">
                                         <tr align="center">
                                            <td width="3%">序号</td>
											<td width="10%">车次路线</td>
											<td width="10%">车票日期</td>
											<td width="10%">发车时间</td>
											
											<td width="10%">到达时间</td>
											<td width="10%">车票票价</td>
											<td width="10%">剩余票数</td>
											<td width="10%">类型</td>
											
											<td width="10%">路过站点</td>
											<td width="10%">预定车票</td>
								         </tr>
                                         <s:iterator value="#request.checiList" id="checi" status="ss">
										 <tr align='center' >
											<td bgcolor="#FFFFFF" align="center">
												<s:property value="#ss.index+1"/>
											</td>
											<td bgcolor="#FFFFFF" align="center">
												<s:property value="#checi.shifazhan"/>--<s:property value="#checi.daodazhan"/>
											</td>
											<td bgcolor="#FFFFFF" align="center">
												<s:property value="#checi.piaoshijian"/>
											</td>
											<td bgcolor="#FFFFFF" align="center">
												<s:property value="#checi.startshijian"/>
											</td>
											
											<td bgcolor="#FFFFFF" align="center">
											    <s:property value="#checi.endshijian"/>
											</td>
											<td bgcolor="#FFFFFF" align="center">
												<s:property value="#checi.piaojia"/>
											</td>
											<td  bgcolor="#FFFFFF" align="center">
											    <s:property value="#checi.piaoshu"/>
											</td>
											<td  bgcolor="#FFFFFF" align="center">
											    <s:property value="#checi.leixing"/>
											</td>
											
											<td  bgcolor="#FFFFFF" align="center">
											    <s:property value="#checi.zhongjian"/>
											</td>
											<td bgcolor="#FFFFFF" align="center">
												<input type="button" value="预定该票" onclick="yuding(<s:property value="#checi.id"/>)" style="width: 80px;height: 20px;"/>
											</td>
										  </tr>
										  </s:iterator>
                                      </table>
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
