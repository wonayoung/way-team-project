<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.sql.*" %>
<html><head><title>상품 테이블 내용 삭제</title></head>
<body><center>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project";  
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	 String key = request.getParameter("prdNo");
	
     String jsql = "SELECT * FROM GOODS WHERE prdNo = ?";       
	 PreparedStatement  pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1, key);

  	 ResultSet rs = pstmt.executeQuery();	
	 rs.next();

	 String no = rs.getString("prdNo");
	 String name =  rs.getString("prdName");	
	 int price =  rs.getInt("prdPrice");
	 int stock =  rs.getInt("prdStock");	
	 String  company = rs.getString("prdCompany");
	 String description =  rs.getString("prdDescription");
	 String ctg =  rs.getString("ctgType");
%>

<font color="blue" size='6'><b>[등록된 상품 정보 삭제]</b></font><p>
<h4> 다음과 같이 등록된 상품정보 내용을 삭제하시겠습니까?</h4>
<table border="2" cellpadding="10" style="font-size:10pt;font-family:맑은 고딕">
		<tr>
				<td>카테고리분류</td>
				<td><%=ctg%></td>
				<td rowspan="7"><img src="images\<%=no%>.jpg" width="300" height="300"></td>
		</tr>
		<tr><td>상품번호</td><td><%=no%></td></tr>
		<tr><td>상품명</td><td><%=name%></td></tr>
		<tr><td>상품가격</td><td><%=price%> 원</td></tr>
		<tr><td>재고수량</td><td><%=stock%> 개</td></tr>
		<tr><td>제조회사</td><td><%=company%></td></tr>
		<tr><td>상품설명</td><td width=300><%=description%></td></tr>
</table><p>
<a href="deleteGoodsResult.jsp?prdNo=<%=no%>" style="font-size:10pt;font-family:맑은 고딕">삭제</a>&nbsp;&nbsp;&nbsp;<a href="selectAllGoods.jsp" style="font-size:10pt;font-family:맑은 고딕">취소</a>
<%
    } catch (Exception e) {
    	out.println(e);
}
%>
</center>
</body>
</html>