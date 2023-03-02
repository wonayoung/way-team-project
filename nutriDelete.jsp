<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html><head><title>권장량 계산 데이터 삭제</title></head>
<body>
<center>

<%

	String id = (String)session.getAttribute("sid");
	int no=Integer.parseInt(request.getParameter("no"));

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/way";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String jsql = "delete from mem_nutri where memId=? and no=?";   
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, id);
	pstmt.setInt(2, no);
	
    pstmt.executeUpdate();
	
	//삭제 후 no 값 하나씩 앞으로 당겨줘서 순서 맞추기
	String jsql2 = "SELECT * FROM mem_nutri WHERE memId=? and no > ?";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setString(1,id);
	pstmt2.setInt(2, no);

	ResultSet rs = pstmt2.executeQuery();
	
	int count=0;
	while(rs.next())
	{
		count++;
	}

	String jsql3 = "UPDATE mem_nutri set no = ? WHERE memId=? and no=?";
	PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	
	for(int i=no; i<no+count; i++){
		pstmt3.setInt(1,i);
		pstmt3.setString(2,id);
		pstmt3.setInt(3,i+1);

		pstmt3.executeUpdate();
	}

	pstmt.close();
	con.close();

   } catch (Exception e) {
       out.println(e);
}

response.sendRedirect("nutriGraph.jsp");
%>
</center>
</body>
</html>