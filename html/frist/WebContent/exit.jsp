<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="eseat"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="euser"%>
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
	padding: 260px 0px 0px 180px;
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
		//�����λ�����Ľ���,�Ƚ���λѡ����洫�����Ĳ��������ж�,��λ�ѱ�ѡ����ʾ����
		//δ��ѡʵ��ѡ������,��ʾ��λ������Ϣ,���ݿ������tag���
	%>
	<!-- ��ȡ�û���Ϣ -->
	
	<%
		String logname = (String) session.getAttribute("logname");
		String auth = (String) session.getAttribute("auth");
		String seatid = (String) session.getAttribute("seatid");
		String haveseat = (String) session.getAttribute("haveseat");
		//out.print(seat+"asdfasdf");
	%>
	<%
		/*
		*������Ļ�����Ϣ���
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
 		out.print(seatid);
 %></b></li>
			<li id="l_L4"><b> <%
 	if (haveseat.equals("n"))
 		out.print("null");
 	else
 		out.print("����");
 %></b></li>
 
 
		</div>

		<div id="c">

			<div id="c_left">
				<li id="c_L2">
				ȡ���ɹ�!
				<eseat:eseat seatid="<%=seatid%>" />
				<euser:euser logname="<%=logname%>" />
					</li>
			</div>


		</div>
		<div id="right"></div>
	</div>
</body>
</html>