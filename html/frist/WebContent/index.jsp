<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="login"%>
<title></title>
<html>
</head>
<body>
	<%
	//网页入口,用户由此登录,输入账号密码即可,无注册功能
	//账户验证由login.tag完成
	%>
	<style type="text/css">
body {
	background-image: url(./Login.png);
	background-repeat: no-repeat;
	background-position-x: 50%;
	background-attachment: scroll;
}
</style>
	<FORM action="" Method="post">
		<tr>
			<td><Input type=text name="logname"
				style="margin-left: 995px; margin-top: 240px; width: 120px;"
				style="height:28px;" /></td>
		</tr>
		<br />
		<tr>
			<td><Input type=password name="password"
				style="margin-left: 995px; margin-top: 30px; width: 120px;"
				style="height:28px;" /></td>
		</tr>
		<br /> <input type="submit" name="g" value="登录"
			style="background-image: url(.\ok.png); width: 100px; height: 40px; margin-left: 1000px; margin-top: 55px;">
	</Form>
	<%
		String logname = request.getParameter("logname");
		if (logname == null) {
			logname = "";
		}
		String password = request.getParameter("password");
		if (password == null) {
			password = "";
		}
	%>
	<login:Login logname="<%=logname%>" password="<%=password%>" />
	<!-- 调用login.tag文件,并传递login,password-->
</BODY>
</HTML>