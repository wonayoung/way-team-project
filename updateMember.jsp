<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
	<head><title>회원 정보 수정 완료</title></head>
	<body>

<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");   
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String email = email1+"@"+email2;
	String phone = request.getParameter("phone");
	String tel = request.getParameter("tel");
	String addr = request.getParameter("addr");
	String sex = request.getParameter("sex");

	String DB_URL="jdbc:mysql://localhost:3306/way";  
    String DB_ID="multi";  
    String DB_PASSWORD="abcd"; 
 	 
	Class.forName("org.gjt.mm.mysql.Driver"); 
 	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String jsql="UPDATE member SET memPw=?, memName=?, memBirth=?, memEmail=?, memPhone=?, memTel=?, memAddr=?, memSex=? WHERE memId=?";

	PreparedStatement pstmt  = con.prepareStatement(jsql);
	pstmt.setString(1,pw);
	pstmt.setString(2,name);
	pstmt.setString(3,birth);
	pstmt.setString(4,email);
	pstmt.setString(5,phone);
	pstmt.setString(6,tel);
	pstmt.setString(7,addr);
	pstmt.setString(8,sex);
	pstmt.setString(9,id);

	pstmt.executeUpdate();


	response.sendRedirect("myInfo.jsp");

%>

</body>
</html>