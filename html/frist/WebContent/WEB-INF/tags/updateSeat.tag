<%@ tag import="java.sql.*"%>
<%@ tag pageEncoding="gb2312"%>
<%@ attribute name="seat" required="true"%>
<%
	if (!seat.equals("null")) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			out.print("错误");
		}
		Connection con = null;
		Statement sql = null;
		ResultSet rs = null;

		try {
			try {
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL", "system",
						"lyjie5220");

			} catch (SQLException e1) {
				out.print(e1);
			}
			//out.print(seat);
			boolean state = false;
			String s = "";
			String tem = "1";
			s = "UPDATE SEATCHART SET SEAT_RES='" + tem + "'  WHERE SEAT_ID='" + seat + "'";
			;
			sql = con.createStatement();
			int m = sql.executeUpdate(s);
			sql.executeUpdate("commit");
			if (m == 1) {
				//out.append("更新成功");
			} else {
				out.append("更新失败");
			}

		} catch (Exception exp) {
			out.println("q" + exp);
		}
	}
%>