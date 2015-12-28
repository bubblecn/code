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
</style>
<link rel="stylesheet" href="./css/rdRoom.css" type="text/css" />
</head>

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
	<div class="content">
		<div class="left">
			<li id="l_L1"><b>
				<%
				if(haveseat=="0")
					out.print("null");
				else
					out.print(seatid);
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
				if(haveseat=="0")
					out.print("null");
				else
					out.print(seatid);
				%></b>
			</li>
			<li id="l_L4"><b>
				<%
				if(haveseat=="0")
					out.print("null");
				else
					out.print(seatid);
				%></b>
			</li>
		
		</div>
		<div class="right">
			<div id="head">
			<!-- 上边座位与桌子排布 -->
				<li id="h_s1"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-1.png" /></a></li>
				<li id="h_d1"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="h_s2"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-2.png" /></a></li>
				<li id="h_s3"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-3.png" /></a></li>
				<li id="h_d3"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="h_s4"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-4.png" /></a></li>
				<li id="h_s5"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-5.png" /></a></li>
				<li id="h_d5"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="h_s6"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-6.png" /></a></li>
				<li id="h_s7"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-7.png" /></a></li>
				<li id="h_d7"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="h_s8"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-8.png" /></a></li>
				
				<!-- 上边座位状态 -->
				<li id="h_sta1"><%
					int a = 1;
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
			
				
				<li id="h_sta2"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="h_sta3"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="h_sta4"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="h_sta5"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="h_sta6"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="h_sta7"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="h_sta8"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
			</div>
			<div id="center">
			<!-- 中间座位与桌子排布 -->
				<li id="c_s9"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-9.png" /></a></li>
				<li id="c_d9"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="c_s10"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-10.png" /></a></li>
				<li id="c_s11"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-11.png" /></a></li>
				<li id="c_d11"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="c_s12"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-12.png" /></a></li>
				<li id="c_s13"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-13.png" /></a></li>
				<li id="c_d13"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="c_s14"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-14.png" /></a></li>
				<li id="c_s15"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-15.png" /></a></li>
				<li id="c_d15"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="c_s16"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-16.png" /></a></li>
				<!-- 中间座位状态 -->
				<li id="c_sta1"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta2"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta3"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta4"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta5"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta6"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta7"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta8"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
			</div>
			<div id="foot">
			<!-- 下边座位与桌子排布 -->
				<li id="f_s17"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-17.png" /></a></li>
				<li id="f_d17"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="f_s18"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-18.png" /></a></li>
				<li id="f_s19"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-19.png" /></a></li>
				<li id="f_d19"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="f_s20"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-20.png" /></a></li>
				<li id="f_s21"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-21.png" /></a></li>
				<li id="f_d21"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="f_s22"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-22.png" /></a></li>
				<li id="f_s23"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-23.png" /></a></li>
				<li id="f_d23"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="f_s24"><a href="selectSeat.jsp"><img
						src="<%=request.getContextPath()%>/photo/Seat-24.png" /></a></li>
				
				<!-- 下边座位的状态 -->
				<li id="f_sta1"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta2"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta3"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta4"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta5"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta6"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta7"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta8"><%
				if(a==1)
					out.print("空");
				else
					out.print("占");
				%></li>

			</div>
		</div>
	</div>
</body>
</html>