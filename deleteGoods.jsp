<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.sql.*" %>
<html><head><title>��ǰ ���̺� ���� ����</title></head>
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

<font color="blue" size='6'><b>[��ϵ� ��ǰ ���� ����]</b></font><p>
<h4> ������ ���� ��ϵ� ��ǰ���� ������ �����Ͻðڽ��ϱ�?</h4>
<table border="2" cellpadding="10" style="font-size:10pt;font-family:���� ���">
		<tr>
				<td>ī�װ��з�</td>
				<td><%=ctg%></td>
				<td rowspan="7"><img src="images\<%=no%>.jpg" width="300" height="300"></td>
		</tr>
		<tr><td>��ǰ��ȣ</td><td><%=no%></td></tr>
		<tr><td>��ǰ��</td><td><%=name%></td></tr>
		<tr><td>��ǰ����</td><td><%=price%> ��</td></tr>
		<tr><td>������</td><td><%=stock%> ��</td></tr>
		<tr><td>����ȸ��</td><td><%=company%></td></tr>
		<tr><td>��ǰ����</td><td width=300><%=description%></td></tr>
</table><p>
<a href="deleteGoodsResult.jsp?prdNo=<%=no%>" style="font-size:10pt;font-family:���� ���">����</a>&nbsp;&nbsp;&nbsp;<a href="selectAllGoods.jsp" style="font-size:10pt;font-family:���� ���">���</a>
<%
    } catch (Exception e) {
    	out.println(e);
}
%>
</center>
</body>
</html>