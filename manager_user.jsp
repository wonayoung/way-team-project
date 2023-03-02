<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
		 <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"
    />
   
        <title></title>
		
        <!-- Favicon-->
        <link href="css/stylesmanager.css" rel="stylesheet" />

				 </head>
        <!-- Header-->
        <!-- Section-->
	<body>
		 <div class="menu_01">
 
<div class="ADMIN">ADMIN 님</div>
<div class="menu_02">
	
  <div class="menu_target">상품관리</div>
  
  <br>
  <span>상품조회/수정</span>
  <br>
   상품 등록</div><br>
			 <div class="menu_02">
  <div class="menu_target">회원관리 </div>
				  <br>
  <span  style="color: #000099;font-weight: bold;">회원 수정/탈퇴</span>
  <br>
  </div><br>
			  <div class="menu_02">
  <div class="menu_target">관리자 계정</div>
				  <br>
  계정 수정/탈퇴
		
  </div>
       </div>
		 <form>
			
    <div class="container px-4">
		
<div class="row">
<div class="col mb-5">
        <div class="card h-100">
	<div class="py-6"></div>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project"; 
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

     String jsql = "select * from member";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 ResultSet  rs = pstmt.executeQuery();
%>

<center>

<table border="2" cellpadding="10" >
	<tr class="group" >
		<td>ID</td><td>비밀번호</td><td>성명</td><td>주민번호</td><td>생년월일</td>	
		<td>전화</td><td>수정</td><td>탈퇴</td>
	</tr>	

<%
		while(rs.next()){
			String id = rs.getString("memId");   //  다음 각 함수들의 인수들은 테이블의 각 필드명들임
    		String passwd =  rs.getString("memPasswd");	
			String name = rs.getString("memName");
    		String joomin =  rs.getString("memJoomin");	
			Date birth = rs.getDate("memBirth");
    		String solar =  rs.getString("memSolar");	
			String tel = rs.getString("memTel");
%>
   <tr>                     <!--  상세정보를 나타낼 페이지 링크부분에 회원 아이디를 함께 넘겨줌 -->
 	  <td> <a href="selectDetailMember.jsp?id=<%=id%>" style="color: #000000"><%=id%></a></td>
      <td><%=passwd%></td>
	  <td><%=name%></td>
	  <td><%=joomin%></td>
	  <td><%=birth%> (<%=solar%>)</td>	
 	  <td><%=tel%></td> 
	  <td align=center><a href="updateMember.jsp?id=<%=id%>"><input type="button" value="수정" class="bt_correct"></a></td>
  	  <td align=center><a href="deleteMember.jsp?id=<%=id%>"><input type="button" value="삭제" class="bt_correct"></a></td>
  </tr>
<%
		}  // while문의 끝
%>
</table><p>
<br>

<%
    } catch (Exception e) {
      out.println(e);	
}
%>
	
      </div>
	
	
	 
	 
                    
                          </div>
                           
                       </div>
                
    
		  
</form>

</body>
</html>