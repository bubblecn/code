<%@ tag import="java.sql.*"%>
<%@ tag pageEncoding="gb2312"%>
<%@ attribute name="seat" required="true" %>
<%

try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (ClassNotFoundException e) {
		out.print("´íÎó");
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
		//out.print(seat);
		boolean state=false;
		String s = "";
			s = "select * from SEATCHART" ;
			sql = con.createStatement();
			rs = sql.executeQuery(s);
			
			while (rs.next()) {
				if(seat.equals(rs.getString(1)))
					{
						state=true;
						session.setAttribute("logname",rs.getString(1));
						session.setAttribute("SEAT_WIN",rs.getString(3));
						session.setAttribute("SEAT_POW",rs.getString(4));
						session.setAttribute("SEAT_THER",rs.getString(2));
					}
				}

	} catch (Exception exp) {
		out.println("q"+exp);
	}

%>