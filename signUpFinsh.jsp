<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");   
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String email = email1+"@"+email2;
	String phone = request.getParameter("phone");
	String tel = request.getParameter("tel");
	String postcode = request.getParameter("postcode");
	String addr = request.getParameter("addr");
	String detail = request.getParameter("detail");
	String extra = request.getParameter("extra");
	String sex = request.getParameter("sex");

	String DB_URL="jdbc:mysql://localhost:3306/way";  
    String DB_ID="multi";  
    String DB_PASSWORD="abcd"; 
 	 
	Class.forName("org.gjt.mm.mysql.Driver"); 
 	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String jsql="INSERT INTO member(memId, memPw, memName, memBirth, memEmail, memPhone, memTel, memPost, memAddr, memDetail, memExtra, memSex) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

	PreparedStatement pstmt  = con.prepareStatement(jsql);
	pstmt.setString(1,id);
	pstmt.setString(2,pw);
	pstmt.setString(3,name);
	pstmt.setString(4,birth);
	pstmt.setString(5,email);
	pstmt.setString(6,phone);
	pstmt.setString(7,tel);
	pstmt.setString(8,postcode);
	pstmt.setString(9,addr);
	pstmt.setString(10,detail);
	pstmt.setString(11,extra);
	pstmt.setString(12,sex);

	pstmt.executeUpdate();

%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title></title>
		
        <!-- Favicon-->
        
        <link href="css/styles.css" rel="stylesheet" />
    </head>

			<body style="overflow-x:hidden; overflow-y:auto;">
        <!-- Navigation-->
<div class="container1 px-4 px-lg-5">

  <div class="service"><a href="login.html">로그인</a>&nbsp;&nbsp; <a href="signUp.jsp"> 회원가입</a>&nbsp; &nbsp; 고객센터</div>
</div>
        <nav class="navbar navbar-expand-lg navbar-light">
			
          <div class="container px-4 px-lg-5">
				
			  <div class="navbar-brand"  onclick='window.location.href = "index.jsp"'></div>
                 <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><div class="hamburger">
	<div class="_layer -top"></div>
	<div class="_layer -mid"></div>
	<div class="_layer -bottom"></div>
</div>
    <nav class="menuppal">
    <ul>
      <li><a href="healthconcerns.jsp">건강고민</a></li>
      <li><a href="viewProductAll.jsp">상품</a>
		<ul><li><a href="viewProductBest.jsp">Best</li>
		  <li><a href="viewProductAll.jsp">전체상품</a></li>
				<li><a href="viewProductByTarget.jsp">섭취대상별</a></li>
			<li><a href="viewProductByNutri.jsp">성분별</a></li>
		</li></ul>
	      <li><a href="nutriGraph.jsp">권장량 계산</a></li>
      <li><a href="#">이벤트</a></li>
    </ul>
  </nav>
					 
				
			  </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					  <div class="dropdown">
          <a class="nav-link"  href="healthconcerns.jsp?concerns=뇌">건강고민</a>
                      </div>
                    
					  <div class="dropdown">
                        <a class="nav-link"  href="viewProductAll.jsp" >상품</a>
						<div class="dropdown-content">
							 
							<a href="viewProductAll.jsp">전체상품</a>
							  <a href="viewProductByTarget.jsp?nutri1=vitC&nutri2=hyalAcid">섭취대상별</a>
							 <a href="viewProductByNutri.jsp?nutri=vitK">성분별</a>
      </div>
                      </div>    
                      <a class="nav-link" href="nutriGraph.jsp">권장량 계산</a>
					
                      <a class="nav-link "  href="event.html" >이벤트</a>
					
                           
                    </ul>
                  <div class="d-flex">
					  
                    <!--검색창-->
                    <form name="searchPrd" method="post" action="searchResults.jsp">
						<input type="search" name="keyword" class="btn img_bar" placeholder="검색어를 입력하세요" onkeydown="onEnterSubmitSearch()">
					</form>  
                 
                 </div>
				  <a class="icon_user" href="myDeliveryTracking.jsp"></a>
					  <a class="icon_cart" href="showCart.jsp"></a>
            </div>
         </div>
       </nav>
				  <header class=" py-5">
		
				<div class="footer_title">회원가입 완료</div>
					
					  					<div class="container px-4 px-lg-5 mt-5">
									 <form><div class="signUp5"><br>	
					 
                                       <div class="idchecktext">회원가입이 완료 되었습니다. <br>저희 쇼핑몰을 이용해 주셔서 감사합니다.</div>
                                       <br><br>
				<input type="button" value="로그인 하러가기" onClick="location.href='login.html'" class="btn_submit"> <p></p>
		 </div>
										 </form>
						  </div>
						 
					
        </header>
		<!-- Footer-->
       <footer>
		    
    <div class="footer_container">
      <div class="footer_text">
        <p class="m-0 text-center text-white">WAY<br> <a href="company.html">회사소개</a> <a href="terms.html">이용약관</a> <a href="privacy.html">개인정보취급처리방침</a> <a href="advertisement.html">광고문의</a> <a href="managerLogin.html">관리자로그인</a><br><br>
          대표 : 정정정 | 이메일 : cs@way.com | 문의전화 : 02-0000-0000 <br>사업자등록번호 : 200-00-00000 통신판매업신고 : 2022-서울강남-00000 <br>주소 : 서울 강남구 XX동 XX로 11-77 Copyright © <br><br>way. All Rights Reserved.</p>
		 
      </div>
    </div>
				
    </footer>
	</body>
	</html>