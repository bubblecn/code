<%@ page contentType="text/html;charset=gb2312"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<style type="text/css">
body {
	background-image: url(./Reserved.png);
	background-repeat: no-repeat;
	background-position-x: 50%;
	background-attachment: scroll;
}

#content {
	height: 600px;
	margin: 0;
}

#left {
	width: 42%;
	height: 600px;
	float: left;
	margin: 0;
}

#c {
	width: 31%;
	height: 600px;
	margin: 0;
	float: left;
}

#right {
	width: 27%;
	height: 600px;
	float: right;
	margin: 0;
}

#d1 {
	margin-top: 0px;
	position: absolute;
	z-index: 1;
	width: 430px;
	height: 220px;
}

#c_left {
	width: 24%;
	height: 200px;
	float: left;
	margin: 0;
}

#c_L1 {
	padding: 160px 0px 0px 0px;
	list-style-type: none;
}

#c_center {
	width: 47%;
	height: 200px;
	margin: 0;
	float: left;
}

#c_L21 {
	padding: 160px 0px 0px 0px;
	list-style-type: none;
}

#c_L22 {
	padding: 35px 0px 0px 0px;
	list-style-type: none;
}

#c_right {
	width: 29%;
	height: 600px;
	float: right;
	margin: 0;
}

#c_L3 {
	padding: 160px 0px 0px 0px;
	list-style-type: none;
}

#d2 {
	display: none;
	margin-top: 0px;
	position: absolute;
	width: 430px;
	height: 220px;
	z-index: 1;
	height: 220px;
}

#r_L1 {
	padding: 160px 0px 0px 0px;
	list-style-type: none;
}

#r_L2 {
	list-style-type: none;
	margin: -80px 50px 0px 79px;
}

#r_L3 {
	list-style-type: none;
	margin: -82px 0px 0px 270px;
}

#d3 {
	display: none;
	position: absolute;
	z-index: 1;
	padding: 180px 0px 0px 0px;
}

#L1 {
	padding: 160px 0px 0px 0px;
	list-style-type: none;
}

#L2 {
	padding: 17px 0px 0px 0px;
	list-style-type: none;
}

#L3 {
	padding: 17px 0px 0px 0px;
	list-style-type: none;
}

#l_L1 {
	list-style-type: none;
	margin: 225px 0px 0px 340px;
}

#l_L2 {
	list-style-type: none;
	margin: 25px 0px 0px 340px;
}

#l_L3 {
	list-style-type: none;
	margin: 21px 0px 0px 340px;
}
#l_L4 {
	list-style-type: none;
	margin: 21px 0px 0px 340px;
}
#l_L5 {
	list-style-type: none;
	margin: 0px 0px 0px 340px;
}
</style>

</head>
<script language="javascript">
	function Tab(num) {
		var i;
		for (i = 1; i <= 3; i++) {
			if (i == num)
				document.getElementById("d" + i).style.display = "block";
			else
				document.getElementById("d" + i).style.display = "none";
		}
	}
</script>
<body>
<!-- 获取用户信息 -->
	<%
		String logname = (String) session.getAttribute("logname");
		String auth = (String) session.getAttribute("auth");
		String seatid = (String) session.getAttribute("seatid");
		String haveseat = (String) session.getAttribute("haveseat");
	%>
	<%
		/*
		*左侧栏的基本信息输出
		*/
	%>
	<div id="content">
		<div id="left">
			<li id="l_L1"><b>
				<%
				//if(haveseat=="0")
				//	out.print("null");
				//else
					out.print(logname);
				%></b>
			</li>
			<li id="l_L2"><b>
				<%
				if(haveseat=="0")
					out.print("null");
				else
					out.print(seatid);
				%></b>
			</li>
			<li id="l_L3"><b>
				<%
				if(haveseat.equals("n"))
					out.print("null");
				else
					out.print(seatid);
				%></b>
			</li>
			<li id="l_L4"><b>
				<%
				if(haveseat.equals("n"))
					out.print("null");
				else
					out.print("有座");
				%></b>
			</li>
			<li id="l_L5"><a href="exit.jsp"><img
						src="<%=request.getContextPath()%>/exit.png" /></a></li>
		
		</div>

		<div id="c">
			
			<div id="d1">
				<div id="c_left">
					<li id="c_L1"><a href="vip1.jsp"><img
							src="<%=request.getContextPath()%>/Vip-1.png" /></a></li>
				</div>
				<div id="c_center">
					<li id="c_L21"><a href="rdRoom1.jsp"><img
							src="<%=request.getContextPath()%>/Reading-room-1.png" /></a></li>
					<li id="c_L22"><a href="rdRoom2.jsp"><img
							src="<%=request.getContextPath()%>/Reading-room-2.png" /></a></li>
				</div>
				<div id="c_right">
					<li id="c_L3"><a href="vip2.jsp"><img
							src="<%=request.getContextPath()%>/Vip-2.png" /></a></li>
				</div>

			</div>
			<div id="d2">
				<li id="r_L1"><img
					src="<%=request.getContextPath()%>/Office.png" /></a></li>
				<li id="r_L2"><a href="Discuss1.jsp"><img
						src="<%=request.getContextPath()%>/Discuss-1.png" /></a></li>
				<li id="r_L3"><a href="rDiscuss.jsp"><img
						src="<%=request.getContextPath()%>/Discuss-2.png" /></a></li>
			</div>
			<div id="d3">
				<a href="lecturehall.jsp"><img
					src="<%=request.getContextPath()%>/lecturehall.png" /></a>
			</div>
		</div>
		<div id="right">
			<ul>
				<li id="L1" onclick="Tab(1)"><a href="#"><img
						src="<%=request.getContextPath()%>/1st-floor.png" /></a></li>
				<li id="L2" onclick="Tab(2)"><a href="#"><img
						src="<%=request.getContextPath()%>/2nd-floor.png" /></a></li>
				<li id="L3" onclick="Tab(3)"><a href="#"><img
						src="<%=request.getContextPath()%>/3rd-floor.png" /></a></li>
			</ul>
		</div>
	</div>
</body>
</html>