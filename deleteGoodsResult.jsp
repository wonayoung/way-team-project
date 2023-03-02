<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>상품 테이블 내용 삭제 완료</title></head>
<body>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project"; 
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	 String key = request.getParameter("prdNo");
	 
     String jsql = "DELETE FROM GOODS WHERE prdNo=?";        
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1, key);
	
 	 pstmt.executeUpdate();
%>
 <jsp:forward page="selectAllGoods.jsp"/>  
 <%-- response.sendRedirect("selectAllGoods.jsp"); 와 동일  --%>
 		
<%
    } catch (Exception e) {
    	out.println(e);
}
%>
</body>
</html>