<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head><title>관심 상품 삭제</title></head>
<body>
<%
	String memId = (String)session.getAttribute("sid");
	String prdNo = request.getParameter("prdNo");

	String DB_URL="jdbc:mysql://localhost:3306/way";  
    String DB_ID="multi";  
    String DB_PASSWORD="abcd"; 
 	 
	Class.forName("org.gjt.mm.mysql.Driver"); 
 	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String sql="DELETE FROM wishlist WHERE memId=? AND prdNo=?";

	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, memId);
	pstmt.setString(2, prdNo);

	pstmt.executeUpdate();

	response.sendRedirect("viewDetailProduct.jsp?prdNo="+prdNo);

	pstmt.close();
	con.close();
%>
<body>
<html>
