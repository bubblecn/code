<%@ tag import="java.sql.*"%>
<%@ tag pageEncoding="gb2312"%>
<%@ attribute name="logname" required="true" %>
<%

try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (ClassNotFoundException e) {
		out.print("����");
	}
	Connection con = null;
	Statement sql = null;
	ResultSet rs = null;

	try {
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL", "system", "lyjie5220");

		} catch (SQLException e1) {
		out.print(e1);
		}
		boolean state=false;
		String s = "";
			s = "select * from SEATUSER" ;
			sql = con.createStatement();
			rs = sql.executeQuery(s);
			
			while (rs.next()) {
				if(logname.equals(rs.getString(1)))
					{
						state=true;
						session.setAttribute("logname",rs.getString(1));
						session.setAttribute("auth",rs.getString(3));
						session.setAttribute("haveseat",rs.getString(4));
						session.setAttribute("seatid",rs.getString(5));
						response.sendRedirect("Floor.jsp");
						
					}
				}
			
			if(state==false&&!logname.equals("")){
				%>
				<CENTER>
				<br>
				�˺Ų����ڻ��������������
				</CENTER>
			<%
			
			}

	} catch (Exception exp) {
		out.println(exp);
	}

%>