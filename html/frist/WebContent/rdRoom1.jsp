<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="Ordroom"%>
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
	<Ordroom:ordroom  />


<!-- 获取用户信息 -->
	<%
		String logname = (String) session.getAttribute("logname");
		String auth = (String) session.getAttribute("auth");
		String seatid = (String) session.getAttribute("seatid");
		String haveseat = (String) session.getAttribute("haveseat");
		
		String f1r1001 = (String) session.getAttribute("f1r1001");
		//out.print(f1r1001+"a");
		String f1r1002 = (String) session.getAttribute("f1r1002");
		String f1r1003 = (String) session.getAttribute("f1r1003");
		String f1r1004 = (String) session.getAttribute("f1r1004");
		String f1r1005 = (String) session.getAttribute("f1r1005");
		String f1r1006 = (String) session.getAttribute("f1r1006");
		String f1r1007 = (String) session.getAttribute("f1r1007");
		//out.print(f1r1007);
		String f1r1008 = (String) session.getAttribute("f1r1008");
		String f1r1009 = (String) session.getAttribute("f1r1009");
		String f1r10010 = (String) session.getAttribute("f1r10010");
		String f1r10011 = (String) session.getAttribute("f1r10011");
		String f1r10012 = (String) session.getAttribute("f1r10012");
		String f1r10013 = (String) session.getAttribute("f1r10013");
		String f1r10014 = (String) session.getAttribute("f1r10014");
		String f1r10015 = (String) session.getAttribute("f1r10015");
		String f1r10016 = (String) session.getAttribute("f1r10016");
		String f1r10017 = (String) session.getAttribute("f1r10017");
		String f1r10018 = (String) session.getAttribute("f1r10018");
		String f1r10019 = (String) session.getAttribute("f1r10019");
		String f1r10020 = (String) session.getAttribute("f1r10020");
		String f1r10021 = (String) session.getAttribute("f1r10021");
		String f1r10022 = (String) session.getAttribute("f1r10022");
		String f1r10023 = (String) session.getAttribute("f1r10023");
		String f1r10024 = (String) session.getAttribute("f1r10024");
		
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
				//if(haveseat=="0")
				//	out.print("null");
				//else
					out.print(logname);
				%></b>
			</li>
			<li id="l_L2"><b>
				<%
				if(haveseat.equals("n"))
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
					out.print(auth);
				%></b>
			</li>
			<li id="l_L4"><b>
				<%
				if(haveseat.equals("n"))
					out.print("null");
				else
					out.print(seatid);
				%></b>
			</li>
		<li id="l_L5"><a href="exit.jsp"><img
						src="<%=request.getContextPath()%>/exit.png" /></a></li>
		
		
		</div>
		<div class="right">
			<div id="head">
			<!-- 上边座位与桌子排布 -->
				
				<li id="h_s1"><a href="selectSeat.jsp?seat=f1r1001&sta=<%=f1r1001%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-1.png" /></a></li>
				<li id="h_d1"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="h_s2"><a href="selectSeat.jsp?seat=f1r1002&sta=<%=f1r1002%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-2.png" /></a></li>
				<li id="h_s3"><a href="selectSeat.jsp?seatid=f1r1003&sta=<%=f1r1003%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-3.png" /></a></li>
				<li id="h_d3"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="h_s4"><a href="selectSeat.jsp?seat=f1r1004&sta=<%=f1r1004%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-4.png" /></a></li>
				<li id="h_s5"><a href="selectSeat.jsp?seat=f1r1005&sta=<%=f1r1005%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-5.png" /></a></li>
				<li id="h_d5"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="h_s6"><a href="selectSeat.jsp?seat=f1r1006&sta=<%=f1r1006%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-6.png" /></a></li>
				<li id="h_s7"><a href="selectSeat.jsp?seat=f1r1007&sta=<%=f1r1007%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-7.png" /></a></li>
				<li id="h_d7"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="h_s8"><a href="selectSeat.jsp?seat=f1r1008&sta=<%=f1r1008%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-8.png" /></a></li>
				
				<!-- 上边座位状态 -->
				<li id="h_sta1"><%
					int a = 1;
				if(f1r1001.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
			
				
				<li id="h_sta2"><%
				if(f1r1002.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="h_sta3"><%
				if(f1r1003.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="h_sta4"><%
				if(f1r1004.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="h_sta5"><%
				if(f1r1005.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="h_sta6"><%
						if(f1r1006.equals("0"))
							out.print("空");
						else
							out.print("占");
				%></li>
				
				<li id="h_sta7"><%
						if(f1r1007.equals("0"))
							out.print("空");
						else
							out.print("占");
				%></li>
				
				<li id="h_sta8"><%
				if(f1r1008.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
			</div>
			<div id="center">
			<!-- 中间座位与桌子排布 -->
				<li id="c_s9"><a href="selectSeat.jsp?seat=f1r1009&sta=<%=f1r1009%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-9.png" /></a></li>
				<li id="c_d9"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="c_s10"><a href="selectSeat.jsp?seat=f1r10010&sta=<%=f1r10010%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-10.png" /></a></li>
				<li id="c_s11"><a href="selectSeat.jsp?seat=f1r10011&sta=<%=f1r10011%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-11.png" /></a></li>
				<li id="c_d11"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="c_s12"><a href="selectSeat.jsp?seat=f1r10012&sta=<%=f1r10012%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-12.png" /></a></li>
				<li id="c_s13"><a href="selectSeat.jsp?seat=f1r10013&sta=<%=f1r10013%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-13.png" /></a></li>
				<li id="c_d13"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="c_s14"><a href="selectSeat.jsp?seat=f1r10014&sta=<%=f1r10014%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-14.png" /></a></li>
				<li id="c_s15"><a href="selectSeat.jsp?seat=f1r10015&sta=<%=f1r10015%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-15.png" /></a></li>
				<li id="c_d15"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="c_s16"><a href="selectSeat.jsp?seat=f1r10016&sta=<%=f1r10016%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-16.png" /></a></li>
				<!-- 中间座位状态 -->
				<li id="c_sta1"><%
				if(f1r1009.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta2"><%
				if(f1r10010.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta3"><%
				if(f1r10011.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta4"><%
				if(f1r10012.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta5"><%
				if(f1r10013.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta6"><%
				if(f1r10014.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta7"><%
				if(f1r10015.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="c_sta8"><%
				if(f1r10016.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
			</div>
			<div id="foot">
			<!-- 下边座位与桌子排布 -->
				<li id="f_s17"><a href="selectSeat.jsp?seat=f1r10017&sta=<%=f1r10017%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-17.png" /></a></li>
				<li id="f_d17"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="f_s18"><a href="selectSeat.jsp?seat=f1r10018&sta=<%=f1r10018%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-18.png" /></a></li>
				<li id="f_s19"><a href="selectSeat.jsp?seat=f1r10019&sta=<%=f1r10019%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-19.png" /></a></li>
				<li id="f_d19"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="f_s20"><a href="selectSeat.jsp?seat=f1r10020&sta=<%=f1r10020%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-20.png" /></a></li>
				<li id="f_s21"><a href="selectSeat.jsp?seat=f1r10021&sta=<%=f1r10021%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-21.png" /></a></li>
				<li id="f_d21"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="f_s22"><a href="selectSeat.jsp?seat=f1r10022&sta=<%=f1r10022%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-22.png" /></a></li>
				<li id="f_s23"><a href="selectSeat.jsp?seat=f1r10023&sta=<%=f1r10023%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-23.png" /></a></li>
				<li id="f_d23"><img
					src="<%=request.getContextPath()%>/photo/Desk.png" /></a></li>
				<li id="f_s24"><a href="selectSeat.jsp?seat=f1r10024&sta=<%=f1r10024%>"><img
						src="<%=request.getContextPath()%>/photo/Seat-24.png" /></a></li>
				
				<!-- 下边座位的状态 -->
				<li id="f_sta1"><%
				if(f1r10017.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta2"><%
				if(f1r10018.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta3"><%
				if(f1r10019.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta4"><%
				if(f1r10020.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta5"><%
				if(f1r10021.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta6"><%
				if(f1r10022.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta7"><%
				if(f1r10023.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
				<li id="f_sta8"><%
				if(f1r10024.equals("0"))
					out.print("空");
				else
					out.print("占");
				%></li>
				
			</div>
		</div>
	</div>
</body>
</html>