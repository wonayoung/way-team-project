<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>��ǰ ���̺� ���� ��ȸ</title></head>
<body>
<center>
<font color="blue" size='6'><b>[��ü ��ϻ�ǰ ��ȸ]</b></font><p>
<table border="1" width=1000 style="font-size:10pt;font-family:���� ���">
	<tr>
		<td align=center>��ǰ����</td><td align=center>ī�װ��з�</td><td align=center>��ǰ��ȣ</td><td align=center>��ǰ��</td><td align=center>��ǰ����</td><td align=center>������</td><td align=center>����ȸ��</td><td align=center>��ǰ����</td><td align=center><b><font color=blue>[����]</font></b></td><td align=center><b><font color=blue>[����]</font></b></td>
	</tr>	

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project";  //  ������ DB��
     String DB_ID="multi";  //  ������ ���̵�
     String DB_PASSWORD="abcd"; // ������ �н�����
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); // DB�� ����

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
	  <td align="center"><%=price%> ��</td>
      <td align="center"><%=stock%> ��</td>
	  <td align="center"><%=company%></td>
	  <td align="center" width=300><%=description%></td>
	  <td><a href="updateGoods.jsp?prdNo=<%=no%>"><center>Yes</center></a></td>
	  <td><a href="deleteGoods.jsp?prdNo=<%=no%>" ><center>Yes</center></a></td>
 </tr>
<%
	 }  // while���� ��
%>
</table><p><br>
<a href="insertGoods.jsp" align=center style="font-size:10pt;font-family:���� ���">�ű� ��ǰ �߰� ���</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
 <a href="manager_index.jsp" style="font-size:10pt;font-family:���� ���">�����ڸ�� ����������</a>
<br><br><br>

<%
    } catch (Exception e) {
      out.println(e);	
}
%>
</body>
</html>