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
	 request.setCharacterEncoding("euc-kr");
	
	 String no = request.getParameter("no");
     String	name = request.getParameter("name");
     int price = Integer.parseInt(request.getParameter("price")); //정수형으로 변환
     String	company = request.getParameter("company");
     int stock = Integer.parseInt(request.getParameter("stock")); //정수형으로 변환
	 String description = request.getParameter("description");
 	 String ctg = request.getParameter("ctg");

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project";  //  접속할 DB명
     String DB_ID="multi";  //  접속할 아이디
     String DB_PASSWORD="abcd"; // 접속할 패스워드
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
     // DB에 접속

     // 상품정보를 수정하기 위한 SQL문 작성
	 String jsql = "UPDATE GOODS SET prdName=?, prdPrice=?, prdCompany=?, ";
     jsql = jsql + "prdStock=?, prdDescription=?, ctgType=? WHERE prdNo=?";  
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
     pstmt.setString(1, name);
	 pstmt.setInt(2, price);  
	 pstmt.setString(3, company);
	 pstmt.setInt(4, stock);
	 pstmt.setString(5, description);
	 pstmt.setString(6, ctg);
	 pstmt.setString(7, no); 

     pstmt.executeUpdate();  
	 //   여기까지해서 DB에 상품정보를 수정(갱신)하는 부분은 완료됨!
     //   이후부터 나오는 내용은 수정한 사항을 웹 페이지에 보여주기 위한 용도의 코드임.

	// 수정한 상품정보의 내용을 조회(출력)하기 위한 SQL문 작성
	 String jsql2 =  "SELECT * FROM GOODS WHERE prdNo=?";  	 
	 PreparedStatement  pstmt2 = con.prepareStatement(jsql2);
	 pstmt2.setString(1, no);

	 ResultSet rs = pstmt2.executeQuery();
     rs.next();
%>

<center>
<h4>수정된 상품정보는 다음과 같습니다.</h4></center>
<table border="1" cellpadding="10" >	
		<tr  width="20%"><td class="group">상품번호</td> <td><%=rs.getString("prdNo")%></td></tr>
		<tr><td class="group">상품명</td> <td><%=rs.getString("prdName")%></td></tr>
		<tr><td class="group">수량</td><td><%=rs.getInt("prdPrice")%> 개</td></tr>
		<tr><td class="group">판매가</td><td><%=rs.getInt("prdStock")%> 원</td></tr>

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