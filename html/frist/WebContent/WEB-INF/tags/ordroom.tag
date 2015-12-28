<%@ tag import="java.sql.*"%>
<%@ tag pageEncoding="gb2312"%>
<%
 	String logname="001";
	String password="001";

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
		boolean state=false;
		String s = "";
			s = "select * from SEATCHART" ;
			sql = con.createStatement();
			rs = sql.executeQuery(s);
			int a7=1,a8=1;
			while (rs.next()) {
				//out.print(rs.getString(1));
				/*if(logname.equals(rs.getString(1))&&password.equals(rs.getString(2)))
					{
						state=true;
						session.setAttribute("logname",rs.getString(1));
						session.setAttribute("auth",rs.getString(3));
						session.setAttribute("haveseat",rs.getString(4));
						session.setAttribute("seatid",rs.getString(5));
						response.sendRedirect("Floor.jsp");
						
					}*/
					if(rs.getString(1).equals("f1r1001")){
						session.setAttribute("f1r1001",rs.getString(2));
						//out.print(rs.getString(2));
					}
					if(rs.getString(1).equals("f1r1002")){
						session.setAttribute("f1r1002",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r1003")){
						session.setAttribute("f1r1003",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r1004")){
						session.setAttribute("f1r1004",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r1005")){
						session.setAttribute("f1r1005",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r1006")){
						session.setAttribute("f1r1006",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r1007")&&a7==1){
						session.setAttribute("f1r1007",rs.getString(2));
						a7=0;
						//out.print(rs.getString(2)+"a");
					}
					if(rs.getString(1).equals("f1r1008")&&a8==1){
						session.setAttribute("f1r1008",rs.getString(2));
						a8=0;
					}
					if(rs.getString(1).equals("f1r1009")){
						session.setAttribute("f1r1009",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10010")){
						session.setAttribute("f1r10010",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10011")){
						session.setAttribute("f1r10011",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10012")){
						session.setAttribute("f1r10012",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10013")){
						session.setAttribute("f1r10013",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10014")){
						session.setAttribute("f1r10014",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10015")){
						session.setAttribute("f1r10015",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10016")){
						session.setAttribute("f1r10016",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10017")){
						session.setAttribute("f1r10017",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10018")){
						session.setAttribute("f1r10018",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10019")){
						session.setAttribute("f1r10019",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10020")){
						session.setAttribute("f1r10020",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10021")){
						session.setAttribute("f1r10021",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10022")){
						session.setAttribute("f1r10022",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10023")){
						session.setAttribute("f1r10023",rs.getString(2));
					}
					if(rs.getString(1).equals("f1r10024")){
						session.setAttribute("f1r10024",rs.getString(2));
					}
				}
			
			if(state==false&&!logname.equals("")){
				
			
			}

	} catch (Exception exp) {
		out.println(exp);
	}

%>