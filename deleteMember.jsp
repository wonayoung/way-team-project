<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.sql.*" %>
<html><head><title>ȸ�� ���� ����</title></head>
<body><center>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	 String key = request.getParameter("id");
	
     String jsql = "select * from member where memId = ?";       
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1, key);

  	 ResultSet rs = pstmt.executeQuery();	
	 rs.next();

	 String id = rs.getString("memId");
	 String passwd =  rs.getString("memPasswd");	
	 String  name = rs.getString("memName");
 	 String  joomin = rs.getString("memJoomin");
	 Date birth = rs.getDate("memBirth");
	 String solar =  rs.getString("memSolar");
	 String tel =  rs.getString("memTel");
	 String address =  rs.getString("memAddress");
	 String phone =  rs.getString("memPhone");
	 String sex =  rs.getString("memSex");
	 String hobby =  rs.getString("memHobby");
 	 String job =  rs.getString("memjob");
%>

<font color="blue" size='6'><b>[ȸ�� ���� ����(Ż��) Ȯ��]</b></font><p>
<br><br>
<h4> ������ ȸ�������� �����Ͻðڽ��ϱ�?</h4>
<table border="2" cellpadding="10" style="font-size:10pt;font-family:���� ���">
		<tr><td width=100>ID</td><td width=200><%=id%></td></tr>
		<tr><td>��й�ȣ</td><td><%=passwd%></td></tr>
		<tr><td>����</td><td><%=name%></td></tr>
		<tr><td>�ֹι�ȣ</td><td><%=joomin%></td></tr>
		<tr><td>�������</td><td><%=birth%> (<%=solar%>)</td></tr>
		<tr><td>��ȭ��ȣ</td><td><%=tel%></td></tr>
		<tr><td>�ּ�</td><td><%=address%></td></tr>
		<tr><td>�޴�����ȣ</td><td><%=phone%></td></tr>
		<tr><td>����</td><td><%=sex%></td></tr>
		<tr><td>���</td><td><%=hobby%></td></tr>
		<tr><td>����</td><td><%=job%></td></tr>
</table><p>

<a href="deleteMemberResult.jsp?id=<%=id%>" style="font-size:10pt;font-family:���� ���">����</a>&nbsp;&nbsp;
<a href="selectAllMember.jsp" style="font-size:10pt;font-family:���� ���">���</a>
<%
    } catch (Exception e) {
    	out.println(e);
}
%>
</center>
</body>
</html>