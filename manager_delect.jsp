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
  <span   style="color: #000099;font-weight: bold;">상품조회/수정</span>
  <br>
   상품 등록</div><br>
			 <div class="menu_02">
  <div class="menu_target">회원관리 </div>
				  <br>
  <span>회원 수정/탈퇴</span>
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

<center>
<h4> 삭제된 상품정보는 다음과 같습니다.</h4></center>
<table border="1" cellpadding="10" >
		
		<tr width="20%"><td class="group">상품번호</td><td><%=no%></td></tr>
		<tr><td class="group">상품명</td><td><%=name%></td></tr>
		<tr><td class="group">수량</td><td><%=price%> 개</td></tr>
		<tr><td class="group">판매가</td><td><%=stock%> 원</td></tr>
		
</table><p>

<%
    } catch (Exception e) {
    	out.println(e);
}
%>
	
    <div class="correcr_tight">
		<!--저장 버튼 부분 수정했습니다-->
      <input type="button" class="correct_bt01" value="확인">
    </div>
      </div>
	
	
	 
	 
                    
                          </div>
                           
                       </div>
                
    
		  
</form>

</body>
</html>