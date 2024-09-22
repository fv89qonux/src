<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>My JSP 'index.jsp' starting page</title>
	
	<style type="text/css">
	    HTML {
}
BODY {
	MARGIN: 0px; FONT-FAMILY: "Microsoft Yahei"; BACKGROUND: url(/qichep/images/1.jpg) #fff no-repeat 50% 0px; FONT-SIZE: 12px
}
UL {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
UL LI {
	LIST-STYLE-TYPE: none
}
A {
	TEXT-DECORATION: none
}
A:hover {
	COLOR: #f00; TEXT-DECORATION: none
}
.cl {
	CLEAR: both
}
INPUT[type='text']:focus {
	OUTLINE-STYLE: none; OUTLINE-COLOR: invert; OUTLINE-WIDTH: medium
}
INPUT[type='password']:focus {
	OUTLINE-STYLE: none; OUTLINE-COLOR: invert; OUTLINE-WIDTH: medium
}
.login {
	BORDER-BOTTOM: medium none; POSITION: relative; BORDER-LEFT: #eee 2px solid; MARGIN: 0px auto; WIDTH: 370px; BORDER-TOP: #eee 2px solid; BORDER-RIGHT: #eee 2px solid
}
.header {
	BORDER-BOTTOM: #e2e2e2 1px solid; POSITION: relative; FONT-FAMILY: "Microsoft Yahei"; HEIGHT: 50px
}
.header .switch {
	POSITION: absolute; BOTTOM: 0px; HEIGHT: 45px; FONT-SIZE: 16px; LEFT: 60px
}
.header .switch #switch_qlogin {
	MARGIN-RIGHT: 85px
}
.header .switch .switch_btn {
	LINE-HEIGHT: 45px; OUTLINE-STYLE: none; OUTLINE-COLOR: invert; OUTLINE-WIDTH: medium; DISPLAY: inline-block; HEIGHT: 45px; COLOR: #999
}
.header .switch .switch_btn_focus {
	LINE-HEIGHT: 45px; OUTLINE-STYLE: none; OUTLINE-COLOR: invert; OUTLINE-WIDTH: medium; DISPLAY: inline-block; HEIGHT: 45px; COLOR: #333
}
.header .switch .switch_btn:hover {
	COLOR: #333; TEXT-DECORATION: none
}
.header .switch .switch_btn_focus:hover {
	TEXT-DECORATION: none
}
#switch_bottom {
	BORDER-BOTTOM: #848484 2px solid; POSITION: absolute; BOTTOM: -1px; _bottom: -2px
}
.web_login {
	POSITION: relative; WIDTH: 370px
}
#web_login {
	_left: 60px
}
.web_login .login_form {
	MARGIN: 0px auto; WIDTH: 272px
}
.web_login .reg_form {
	MARGIN: 0px auto; WIDTH: 300px
}
.web_login .input-tips {
	LINE-HEIGHT: 42px; MARGIN-TOP: 10px; WIDTH: 50px; FONT-FAMILY: "Hiragino Sans GB", "Microsoft Yahei"; FLOAT: left; HEIGHT: 42px; FONT-SIZE: 16px
}
.web_login .input-tips2 {
	TEXT-ALIGN: right; LINE-HEIGHT: 30px; MARGIN-TOP: 10px; WIDTH: 75px; PADDING-RIGHT: 10px; FONT-FAMILY: "Hiragino Sans GB", "Microsoft Yahei"; FLOAT: left; HEIGHT: 30px; CLEAR: both; FONT-SIZE: 16px
}
.web_login .inputOuter {
	MARGIN-TOP: 10px; WIDTH: 200px; FLOAT: left; HEIGHT: 42px
}
.web_login .inputOuter2 {
	MARGIN-TOP: 5px; WIDTH: 200px; FLOAT: left
}
.web_login .inputstyle {
	BORDER-BOTTOM: #d7d7d7 1px solid; BORDER-LEFT: #d7d7d7 1px solid; LINE-HEIGHT: 38px; IME-MODE: disabled; PADDING-LEFT: 5px; WIDTH: 200px; FONT-FAMILY: Verdana, Tahoma, Arial; BACKGROUND: #fff; HEIGHT: 38px; COLOR: #333; FONT-SIZE: 16px; BORDER-TOP: #d7d7d7 1px solid; BORDER-RIGHT: #d7d7d7 1px solid; border-radius: 2px
}
.web_login INPUT.inputstyle2:focus {
	BORDER-BOTTOM: #198bd4 1px solid; BORDER-LEFT: #198bd4 1px solid; BORDER-TOP: #198bd4 1px solid; BORDER-RIGHT: #198bd4 1px solid; box-shadow: 0 0 2px #198BD4
}
.web_login INPUT.inputstyle:focus {
	BORDER-BOTTOM: #198bd4 1px solid; BORDER-LEFT: #198bd4 1px solid; BORDER-TOP: #198bd4 1px solid; BORDER-RIGHT: #198bd4 1px solid; box-shadow: 0 0 2px #198BD4
}
.web_login .inputstyle2 {
	BORDER-BOTTOM: #d7d7d7 1px solid; BORDER-LEFT: #d7d7d7 1px solid; LINE-HEIGHT: 34px; IME-MODE: disabled; PADDING-LEFT: 5px; WIDTH: 200px; FONT-FAMILY: Verdana, Tahoma, Arial; BACKGROUND: #fff; HEIGHT: 34px; COLOR: #333; FONT-SIZE: 16px; BORDER-TOP: #d7d7d7 1px solid; BORDER-RIGHT: #d7d7d7 1px solid; border-radius: 2px
}
.web_login .uinArea {
	Z-INDEX: 10; POSITION: relative; HEIGHT: 55px
}
.web_login .pwdArea {
	Z-INDEX: 3; POSITION: relative; MARGIN-BOTTOM: 10px; HEIGHT: 55px
}
.web_qr_login {
	POSITION: relative; OVERFLOW: hidden
}
.cue {
	BORDER-BOTTOM: #cccccc 1px solid; TEXT-ALIGN: center; BORDER-LEFT: #cccccc 1px solid; LINE-HEIGHT: 40px; MARGIN-TOP: 10px; FONT-FAMILY: "Hiragino Sans GB", "Microsoft Yahei"; MARGIN-BOTTOM: 5px; HEIGHT: 40px; FONT-SIZE: 14px; BORDER-TOP: #cccccc 1px solid; BORDER-RIGHT: #cccccc 1px solid
}
.login {
	BACKGROUND-COLOR: #ffffff
}
H1 {
	TEXT-ALIGN: center; MARGIN: 80px auto 50px -25px; COLOR: #fff; FONT-SIZE: 35px; FONT-WEIGHT: bold; text-shadow: 0px 1px 1px #555
}
H1 SUP {
	POSITION: absolute; FONT-STYLE: normal; MARGIN-LEFT: 10px; FONT-SIZE: 18px
}
.login {
	BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; PADDING-BOTTOM: 5px; MARGIN: 0px auto; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: #fff; BORDER-TOP: 0px; BORDER-RIGHT: 0px; PADDING-TOP: 5px; box-shadow: 1px 1px 2px 0 rgba(0, 0, 0, .3); -webkit-box-shadow: 1px 1px 2px 0 rgba(0, 0, 0, .3)
}
.web_login {
	PADDING-BOTTOM: 20px
}
.jianyi {
	TEXT-ALIGN: center; MARGIN-TOP: 25px; COLOR: #b3b8c4
}
.reg_form LI {
	HEIGHT: 55px
}
.cue {
	BORDER-BOTTOM: #eee 1px solid; BORDER-LEFT: #eee 1px solid; MARGIN-TOP: 15px; MARGIN-BOTTOM: 10px; BORDER-TOP: #eee 1px solid; BORDER-RIGHT: #eee 1px solid; border-radius: 3px
}
.web_login INPUT.inputstyle2:focus {
	box-shadow: 0 0 0
}
.web_login INPUT.inputstyle:focus {
	box-shadow: 0 0 0
}
.web_login .reg_form {
	MARGIN: 0px auto; WIDTH: 300px
}
.web_login .inputstyle2 {
	WIDTH: 210px; border-radius: 2px
}
.web_login .input-tips2 {
	WIDTH: 80px; PADDING-RIGHT: 5px; _width: 75px; _font-size: 12px
}
.button_blue {
	BORDER-BOTTOM: #0078b3 0px solid; TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; OUTLINE-STYLE: none; OUTLINE-COLOR: invert; PADDING-LEFT: 10px; OUTLINE-WIDTH: medium; PADDING-RIGHT: 10px; DISPLAY: inline-block; FONT-FAMILY: "Microsoft Yahei", Arial, Helvetica, sans-serif; BACKGROUND: #2795dc; FLOAT: left; HEIGHT: 41px; COLOR: #fff; FONT-SIZE: 16px; BORDER-TOP: medium none; CURSOR: pointer; BORDER-RIGHT: medium none; PADDING-TOP: 0px; border-radius: 4px
}
INPUT.button_blue:hover {
	BORDER-BOTTOM: #006698 0px solid; BACKGROUND: #0081c1; COLOR: #fff; TEXT-DECORATION: none
}
A.zcxy {
	LINE-HEIGHT: 58px; COLOR: #959ca8; MARGIN-LEFT: 15px; TEXT-DECORATION: underline
}
.web_login .login_form {
	MARGIN-TOP: 30px
}
.web_login .uinArea {
	HEIGHT: 60px
}
.header .switch {
	LEFT: 70px
}
</style>
	
	
<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
       
	<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入账号");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("账号或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
    </script>	
	
	
	
  </head>
  
<body>
<h1 style="color: white;font-family: 微软雅黑;font-size: 24px;">小型汽车票务管理系统</h1>
<div class="login" style="margin-top:50px;">
    <div class="header" style="display: none">
        <div class="switch" id="switch"><a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">000</a>
			<a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">111</a><div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
        </div>
    </div>    
  
    
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 300px;"><!-- 高度 -->    
            <div class="web_login" id="web_login">
                <div class="login-box">
					<div class="login_form">
						<form action="" name="ThisForm" method="post">
		                    <div class="uinArea" id="uinArea">
		                            <label class="input-tips" for="u">帐号：</label>
					                <div class="inputOuter" id="uArea">
					                    <input type="text" name="userName" class="inputstyle"/>
					                </div>
		                    </div>
		                    <div class="pwdArea" id="pwdArea">
		                            <label class="input-tips" for="p">密码：</label> 
				                    <div class="inputOuter" id="pArea">
				                        <input type="text" name="userPw" class="inputstyle"/>
				                    </div>
		                    </div>
		                    <div class="pwdArea" id="pwdArea" style="display: none">
		                            <label class="input-tips" for="p">类型：</label> 
				                    <div class="inputOuter" style="margin-top: 22px;">
				                        <select name="userType" style="width: 207px;">
                                            <option value="0">0</option>
                                            <option value="1">1</option>
                                        </select>
				                    </div>
		                    </div>
		                    <div style="padding-left:50px;margin-top:20px;">
		                            <input type="button" value="登 录" style="width:150px;" class="button_blue" onclick='check1()'/>
		                            <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
		                    </div>
		                </form>
		            </div>
            	</div>
            </div>
    </div>
</div>


<div class="jianyi">*推荐使用ie8或以上版本ie浏览器或Chrome内核浏览器访问本站</div>

</body>
</html>
