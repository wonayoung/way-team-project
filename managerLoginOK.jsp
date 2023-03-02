<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>로그인 체크</title>
</head>
<body>
<%
    	String DB_URL="jdbc:mysql://localhost:3306/way";  
        String DB_ID="multi"; 
        String DB_PASSWORD="abcd"; 

		Class.forName("org.gjt.mm.mysql.Driver");  
 	    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		String sql = "SELECT * FROM manager WHERE managerId=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);

		ResultSet rs = pstmt.executeQuery();

		if(rs.next())
			if(pw.equals(rs.getString("managerPw"))){
				session.setAttribute("sid", id);
				response.sendRedirect("manager.html");
		}
			else
			{
%>
				<script type="text/javascript">
				alert("비밀번호가 다릅니다.");
				location.replace('managerLogin.html');
				</script>
<%
			}
		else
		{
%>
	<script type="text/javascript">
		alert("존재하지 않는 ID입니다.");
		location.replace('managerLogin.html');
	</script>
<%
		}
	rs.close();
	pstmt.close();
	con.close();
%>
</body>
</html>
