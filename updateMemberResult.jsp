<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
	<head>  <link href="css/stylesmanager1.css" rel="stylesheet" /></head>
	<body>

		 <div class="menu_01" >
 
<div class="ADMIN">ADMIN ��</div>
<div class="menu_02">
  <div class="menu_target">��ǰ����</div>
  
  <br>
  ��ǰ��ȸ/����
  <br>
  ��ǰ ���
			  <br>
  ���� ����
			   <br>
  ���� Ż��</div>
       </div>
		 <form>
			 <div class="container px-4">
		
<div class="row">
<div class="col mb-5">
        <div class="card h-100">
  
<%
	 request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");
	String	passwd = request.getParameter("passwd");
	String	name = request.getParameter("name");

	String	joomin1 = request.getParameter("joomin1");
	String	joomin2 = request.getParameter("joomin2");
	String joomin = joomin1 + "-" + joomin2;

	String birthYear = request.getParameter("birthYear");
	String birthMonth = request.getParameter("birthMonth");
	String birthDay = request.getParameter("birthDay");
	String birth = birthYear + "-" + birthMonth + "-" + birthDay;

	String	solar = request.getParameter("solar");
	String	tel = request.getParameter("telephone");
	String address = request.getParameter("address");

	String	hp1 = request.getParameter("hp1");
	String	hp2 = request.getParameter("hp2");
	String	hp3 = request.getParameter("hp3");
	String phone = hp1+"-"+hp2+"-"+hp3;	
	
	String	sex = request.getParameter("sex");

	String[ ] hobby = request.getParameterValues("hobby");
	String hobbyList = " ";

	if(hobby != null)
	{
		for(int i=0; i<hobby.length; i++)
		{
			hobbyList += hobby[i];
			hobbyList += "  ";
		}
	}
	else
		hobbyList = "��̾���";

	String job = request.getParameter("job");

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project";
     String DB_ID="multi";  
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "update member set memPasswd=?, memName=?, ";
	 jsql = jsql + "memJoomin=?, memBirth=?, memSolar=?, ";
	 jsql = jsql + "memTel=?, memAddress=?, memPhone=?, ";
	 jsql = jsql + "memSex=?, memHobby=?, memJob=? where memId=? ";	
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1,passwd);
	 pstmt.setString(2,name);
	 pstmt.setString(3,joomin);
	 pstmt.setString(4,birth);
	 pstmt.setString(5,solar);
	 pstmt.setString(6,tel);
	 pstmt.setString(7,address);
	 pstmt.setString(8,phone);
	 pstmt.setString(9,sex);
	 pstmt.setString(10,hobbyList);
	 pstmt.setString(11,job);
	 pstmt.setString(12,id);

	 pstmt.executeUpdate();  //  ������ �ۼ��� SQL��(update��)�� �����Ŵ
	                                            //   �� ���� �Ϸ��� ����, ������ DB�� ���ڵ������� ������


     //  �� ���� �κ� ������ DB�� ������Ų �ش� ���ڵ������� ��ȸ�� ��, 
	 //  �ش� ������ ���������� ������ִ� �ڵ忡 �ش��
	 String jsql2 = "select * from member where memId=?";
	 PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	 pstmt2.setString(1,id);

	 ResultSet rs = pstmt2.executeQuery();
	 rs.next();  //  next()�Լ��� ó�� �����ϸ�, ù��° ���ڵ�(��, ������Ų ���ڵ�)�� ����Ű�� ��
%>
<center>
<br><br><br>
	<table border=0 cellpadding=5 >
		<tr>
			<td class="td_name" width="10%">ID</td>
			<td ><%=rs.getString("memId")%></td>
		</tr>
		<tr>
			<td class="td_name">��й�ȣ</td>
			<td><%=rs.getString("memPasswd")%></td>
		</tr>
		<tr>
			<td class="td_name">����</td>
			<td><%=rs.getString("memName")%></td>
		</tr>
		<tr>
			<td class="td_name">�ֹι�ȣ</td>
			<td><%=rs.getString("memJoomin")%></td>
		</tr>
		<tr>
			<td class="td_name">����</td>
			<td><%=rs.getDate("memBirth")%> (<%=rs.getString("memSolar")%>)</td>
		</tr>
		<tr>
			<td class="td_name">��ȭ��ȣ</td>
			<td><%=rs.getString("memTel")%></td>
		</tr>
				<tr>
			<td class="td_name">�޴���</td>
			<td><%=rs.getString("memPhone")%></td>
		</tr>
		<tr>
			<td class="td_name">�ּ�</td>
			<td><%=rs.getString("memAddress")%></td>
		</tr>
		
		<tr>
			<td class="td_name">����</td>
			<td><%=rs.getString("memSex")%></td>
		</tr>
		
	</table>
<%
    } catch (Exception e) {
    	out.println(e);
}
%>
<p>
 <br>
</center>
		</div></div></div></div>
</body>
</html>