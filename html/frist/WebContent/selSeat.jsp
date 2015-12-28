<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="SeatQuery"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="updateSeat"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="userUpdate"%>
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

#c_left {
	width: 90%;
	height: 200px;
	float: left;
	margin: 0;
}

#c_L1 {
	padding: 290px 0px 110px 110px;
	list-style-type: none;
}

#c_L2 {
	padding: 160px 0px 0px 0px;
	list-style-type: none;
}

#ok {
	padding: 30px 0px 0px 150px;
	list-style-type: none;
}
</style>


</head>

<body>

	<%
		//点击座位后进入的界面,先将座位选择界面传过来的参数进行判断,座位已被选则提示返回
		//未被选实现选座功能,显示座位基本信息,数据库操作由tag完成
	%>
	<!-- 获取用户信息 -->
	
	<%
		String logname = (String) session.getAttribute("logname");
		String auth = (String) session.getAttribute("auth");
		String seatid = (String) session.getAttribute("seatid");
		String haveseat = (String) session.getAttribute("haveseat");
		String seat = request.getParameter("seat");
		//out.print(seat+"asdfasdf");
	%>
	<%
		/*
		*左侧栏的基本信息输出
		*/
	%>
	<div id="content">
		<div id="left">
			<li id="l_L1"><b> <%
 	out.print(logname);
 %></b></li>
			<li id="l_L2"><b> <%
 	//if (haveseat == "0")
 	//	out.print("null");
 	//else
 		out.print(seatid);
 %></b></li>
			<li id="l_L3"><b> <%
 	if (haveseat.equals("n"))
 		out.print("null");
 	else
 		out.print(auth);
 %></b></li>
			<li id="l_L4"><b> <%
 	if (haveseat.equals("n"))
 		out.print("null");
 	else
 		out.print(seatid);
 %></b></li>
 
 <li id="l_L5"><a href="exit.jsp"><img
						src="<%=request.getContextPath()%>/exit.png" /></a></li>
		</div>

		<div id="c">

			<div id="c_left">
				
				<FORM action="" name=form>
				<li id="c_L2">
					<!-- 到数据库中查询座位信息,并返回数据 --> 
					<SeatQuery:SeatQuery seat="<%=seat%>" />

					<%
						String SEAT_WIN = (String) session.getAttribute("SEAT_WIN");
							String SEAT_POW = (String) session.getAttribute("SEAT_POW");
							String SEAT_THER = request.getParameter("SEAT_THER");
					%>

					<li>
						<%
							out.println("座位信息:\n");
						%>
				</li>
				<li></li>
				<li></li>
					<li>
						<%
							out.print("座位号: " + seat + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;是否靠窗:" + SEAT_POW);
						%>
				</li>
					<li></li>
				<li></li>
					<li>
						<%
							out.print("是否有电源: " + SEAT_POW + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;是否有助教:" + SEAT_THER);
						%>
				</li>
					<li></li>
				<li></li>
					<li>
						<%
							out.print("开始时间: 8:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;结束时间:22:00");
						%>
				</li>
					<li id="ok">
					选座成功,以上为您的座位信息
				</li>
				</FORM>
				
				<updateSeat:updateSeat seat="<%=seat%>" />
				<userUpdate:userUpdate logname="<%=logname%>" seat="<%=seat%>" />
				

			</div>


		</div>
		<div id="right"></div>
	</div>
</body>
</html>