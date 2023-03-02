<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>상품 테이블 내용 조회</title></head>
<body>
<center>
<font color="blue" size='6'><b>[전체 등록상품 조회]</b></font><p>
<table border="1" width=1000 style="font-size:10pt;font-family:맑은 고딕">
	<tr>
		<td align=center>상품사진</td><td align=center>카테고리분류</td><td align=center>상품번호</td><td align=center>상품명</td><td align=center>상품가격</td><td align=center>재고수량</td><td align=center>제조회사</td><td align=center>상품설명</td><td align=center><b><font color=blue>[수정]</font></b></td><td align=center><b><font color=blue>[삭제]</font></b></td>
	</tr>	

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project";  //  접속할 DB명
     String DB_ID="multi";  //  접속할 아이디
     String DB_PASSWORD="abcd"; // 접속할 패스워드
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); // DB에 접속

     String jsql = "SELECT * FROM GOODS";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 ResultSet  rs = pstmt.executeQuery();

	while(rs.next()){
			String ctg = rs.getString("ctgType");
			String no = rs.getString("prdNo");
    		String name =  rs.getString("prdName");	
			int price =  rs.getInt("prdPrice");
			int stock =  rs.getInt("prdStock");		      
			String  company = rs.getString("prdCompany");
			String  description =  rs.getString("prdDescription");
%>
 <tr>      
	  <td align="center"><a href="selectDetailGoods.jsp?prdNo=<%=no%>"><img src="images\<%=no%>.jpg" width="100" height="100" border=0></a></td>
	  <td align="center"><%=ctg%></td>	
	  <td align=center><a href="selectDetailGoods.jsp?prdNo=<%=no%>"><%=no%></a></td>
	  <td align=center><a href="selectDetailGoods.jsp?prdNo=<%=no%>"><%=name%></a></td> 
	  <td align="center"><%=price%> 원</td>
      <td align="center"><%=stock%> 개</td>
	  <td align="center"><%=company%></td>
	  <td align="center" width=300><%=description%></td>
	  <td><a href="updateGoods.jsp?prdNo=<%=no%>"><center>Yes</center></a></td>
	  <td><a href="deleteGoods.jsp?prdNo=<%=no%>" ><center>Yes</center></a></td>
 </tr>
<%
	 }  // while문의 끝
%>
</table><p><br>
<a href="insertGoods.jsp" align=center style="font-size:10pt;font-family:맑은 고딕">신규 상품 추가 등록</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
 <a href="manager_index.jsp" style="font-size:10pt;font-family:맑은 고딕">관리자모드 메인페이지</a>
<br><br><br>

<%
    } catch (Exception e) {
      out.println(e);	
}
%>
</body>
</html>