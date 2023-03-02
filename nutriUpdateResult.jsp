<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String id = (String)session.getAttribute("sid"); 

	int no = Integer.parseInt(request.getParameter("no"));
	int vitA = Integer.parseInt(request.getParameter("vitA"));
	int vitE = Integer.parseInt(request.getParameter("vitE"));
	int vitC = Integer.parseInt(request.getParameter("vitC"));
	int vitB1 = Integer.parseInt(request.getParameter("vitB1"));
	int vitB2 = Integer.parseInt(request.getParameter("vitB2"));
	int vitB6 = Integer.parseInt(request.getParameter("vitB6"));
	int vitB12 = Integer.parseInt(request.getParameter("vitB12"));
	int niacin = Integer.parseInt(request.getParameter("niacin"));
	int folicAcid = Integer.parseInt(request.getParameter("folicAcid"));
	int calcium = Integer.parseInt(request.getParameter("calcium"));
	int iron = Integer.parseInt(request.getParameter("iron"));
	int zinc = Integer.parseInt(request.getParameter("zinc"));
	

	String DB_URL = "jdbc:mysql://localhost:3306/way";
	String DB_ID = "multi";
	String DB_PASSWORD = "abcd";	

	Class.forName("org.gjt.mm.mysql.Driver");
	Connection con=DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String sql1 = "UPDATE mem_Nutri SET vitA=?, vitE=?, vitC=?, vitB1=?, vitB2=?, vitB6=?, vitB12=?, niacin=?, folicAcid=?, calcium=?, iron=?, zinc=? where memId=? AND no=?";
	PreparedStatement pstmt1 = con.prepareStatement(sql1);
	pstmt1.setInt(1,vitA);
	pstmt1.setInt(2,vitE);
	pstmt1.setInt(3,vitC);
	pstmt1.setInt(4,vitB1);
	pstmt1.setInt(5,vitB2);
	pstmt1.setInt(6,vitB6);
	pstmt1.setInt(7,vitB12);
	pstmt1.setInt(8,niacin);
	pstmt1.setInt(9,folicAcid);
	pstmt1.setInt(10,calcium);
	pstmt1.setInt(11,iron);
	pstmt1.setInt(12,zinc);
	pstmt1.setString(13, id);
	pstmt1.setInt(14, no);
	
	pstmt1.executeUpdate();

	response.sendRedirect("nutriGraph.jsp");

	pstmt1.close();
	con.close();
%>