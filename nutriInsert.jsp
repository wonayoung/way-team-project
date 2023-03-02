<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("sid"); 

	if(id==null){
		id="nonMem";
	}
	String productName = request.getParameter("productName");
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
	
	int no=1;
	
	String DB_URL = "jdbc:mysql://localhost:3306/way";
	String DB_ID = "multi";
	String DB_PASSWORD = "abcd";	 

	Class.forName("org.gjt.mm.mysql.Driver");
	Connection con=DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String sql1 = "select max(no) from mem_nutri where memId=?";
	PreparedStatement pstmt1 = con.prepareStatement(sql1);
	pstmt1.setString(1,id);

	ResultSet rs = pstmt1.executeQuery();

	if(rs.next()){
		no=rs.getInt("max(no)");
		no++;
	}


	String sql2 = "INSERT INTO mem_nutri VALUE (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt2 = con.prepareStatement(sql2);
	
	pstmt2.setString(1,id);
	pstmt2.setInt(2,no);
	pstmt2.setString(3,productName);
	pstmt2.setInt(4,vitA);
	pstmt2.setInt(5,vitE);
	pstmt2.setInt(6,vitC);
	pstmt2.setInt(7,vitB1);
	pstmt2.setInt(8,vitB2);
	pstmt2.setInt(9,vitB6);
	pstmt2.setInt(10,vitB12);
	pstmt2.setInt(11,niacin);
	pstmt2.setInt(12,folicAcid);
	pstmt2.setInt(13,calcium);
	pstmt2.setInt(14,iron);
	pstmt2.setInt(15,zinc);

	pstmt2.executeUpdate();

	response.sendRedirect("nutriGraph.jsp");


	pstmt2.close();
	rs.close();
	pstmt1.close();
%>