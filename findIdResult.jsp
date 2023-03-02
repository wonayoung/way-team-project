<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
		request.setCharacterEncoding("utf-8");
		boolean isExist = false;

    	String DB_URL="jdbc:mysql://localhost:3306/way";  
        String DB_ID="multi"; 
        String DB_PASSWORD="abcd"; 
 	 
	    Class.forName("org.gjt.mm.mysql.Driver");  
 	    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
        
	    String name = request.getParameter("name");
		String phone = request.getParameter("phone");

		String jsql = "select memId from member where memName = ? AND memPhone=?";   
        PreparedStatement  pstmt  = con.prepareStatement(jsql);
	    pstmt.setString(1, name);
		pstmt.setString(2, phone);

	    ResultSet rs = pstmt.executeQuery();  	
        
        if(rs.next())            
			  isExist = true;
		else                          //   레코드(동일한 ID)가 존재하지 않으면  
             isExist = false;

 
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
<body>
  <body onLoad="MM_preloadImages('images/next.png')" style="overflow-x:hidden; overflow-y:auto;">

    <div class="top_fix_zone" id="topBar">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container px-4 px-lg-5">
          <div class="navbar-brand"  onclick='window.location.href = "index.jsp"'></div>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <div class="hamburger">
            <div class="_layer -top"></div>
            <div class="_layer -mid"></div>
            <div class="_layer -bottom"></div>
          </div>
          <nav class="menuppal">
            <ul>
              <li>
                <a href="healthconcerns.jsp">건강고민</a>
              </li>
              <li>
              <a href="viewProductAll.jsp">영양제</a>
              <ul>
                <li><a href="viewProductBest.jsp">Best</a></li>
                <li><a href="viewProductAll.jsp">전체상품</a></li>
                <li><a href="viewProductByTarget.jsp">섭취대상별</a></li>
                <li><a href="viewProductByNutri.jsp">성분별</a></li>
                </li>
              </ul>
              <li><a href="nutriGraph.jsp">권장량 계산</a></li>
              <li><a href="#">건강정보</a></li>
            </ul>
          </nav>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
              <div class="dropdown"><a class="nav-link"  href="healthconcerns.jsp?concerns=뇌">건강고민</a> </div>
              <div class="dropdown"> <a class="nav-link"  href="viewProductAll.jsp" >상품</a>
                <div class="dropdown-content"> <a href="viewProductAll.jsp">
                  <div class="nav_pad">전체상품</div>
            <a href="viewProductBest.jsp">Best</a>
                  </a> <a href="viewProductByTarget.jsp?nutri1=vitC&nutri2=hyalAcid">섭취대상별</a> <a href="viewProductByNutri.jsp?nutri=vitK">성분별</a> </div>
              </div>
              <a class="nav-link" href="nutriGraph.jsp">권장량 계산</a> <a class="nav-link "  href="event.html" >건강정보</a>
            </ul>
            <div class="d-flex"> 
              
              <!--검색창-->
           <!-- 헤더고정 -->
          
    <span class="top_bn_zone"> 
      <!-- Navigation-->
    <%
      String id = (String)session.getAttribute("sid");
      
      if(id!=null)
      {
    %>
      
      <span class="container1 px-4 px-lg-5">
        <span class="service"><a href="logout.jsp">로그아웃</a></span>
      </span>
      
      <%
      }
      else
      {
    %>
      <!-- Navigation-->
       <span class="container1 px-4 px-lg-5">
          <span class="service"><a href="login.html">로그인</a> &nbsp;&nbsp; &nbsp; <a href="signUp.jsp"> 회원가입 </a></span>
      </span>
      <%
      }
    %>
    </div>
                <a class="icon_search" href="searchResults.jsp"></a> 
           
            <a class="icon_user" href="myDeliveryTracking.jsp"></a> <a class="icon_cart" href="showCart.jsp"></a>
             
          
            </div>
          </div>
        </div>
      </nav>
    </div>
    
				  <header class=" py-5">
		
				<div class="footer_title"></div>
					
					  					<div class="container px-4 px-lg-5 mt-5">
									 <form><div class="signUp3"><center><img src="images/logo.png" class="findimg" alt=""/><br><br>	
<%  
		   if(isExist)  {
 %> 
                                       <div class="idchecktext">가입하신 아이디는 <%=rs.getString("memId")%>입니다.</div>
                                       <br><br>
				<input type="button" value="로그인 하러가기" onClick="location.href='login.html'" class="btn_submit"> <p></p>
<% }
	       else {
                
 %>
										<div class="idchecktext">ID가 존재하지 않습니다.</div>
                                       </center><br><br>
				<input type="button" value="회원가입 하러가기" onClick="location.href='signUp.jsp'" class="btn_submit"> <p></p>
<% }
	rs.close();
	pstmt.close();
	con.close();
%>
		 </div>

						  </div>
						 
					
        </header>
<!-- Footer-->
       <!--고객센터 버튼 모든 html에 적용해주세요-->
	   <div class="wrapper">
         <div class="contact-form-page">
            <div class="form-head">
                <div class="header-btn">
                    <a class="top-btn" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
         
<div class="body_chat">
	    <div class="box_chat">  <div class="title_chat1"><img src="images/logo.png"  alt=""/></div>
			
	      <div class="title_chat">상담사 우니</div><br>
                <div class="text_chat">환영합니다~! <br>무엇을 도와드릴까요?</div>
			 <a class="btn_chat" href="inquiry.html">1:1문의하기</a>
        </div>
	       </div>
         </div>
            <a class="buttom-btn" ><i class="fa fa-times"></i></a>
        </div>

<a class="github-source"   target="_blank"><i class="fa fa-github"></i></a>
	<!--위로가기 버튼 모든 html에 적용해주세요-->
  <a href="#" class="go-top"></a> 
  
  <!-- Footer-->
  <footer>
    <div class="footer_container">
      <div class="container px-4 px-lg-5 mt-5">
        <div class="footer_text">
          <p class="m-0 text-center text-white">WAY<br>
            <a href="company.jsp">회사소개</a> <a href="terms.jsp">이용약관</a> <a href="privacy.jsp">개인정보취급처리방침</a> <a href="advertisement.jsp">광고문의</a> <a href="managerLogin.jsp">관리자로그인</a><br>
            <br>
            대표 : 정정정 | 이메일 : cs@way.com | 문의전화 : 02-0000-0000 <br>
            사업자등록번호 : 200-00-00000 통신판매업신고 : 2022-서울강남-00000 <br>
            주소 : 서울 강남구 XX동 XX로 11-77 <br>
            <br>
            Copyright © way. All Rights Reserved.</p>
        </div>
      </div>
    </div>
  </footer>
	 <script src="js/chat.js"></script> 
  <script src="js/top.js"></script> <!-- top버튼 생성-->
  <script src="js/autonav.js"></script> <!-- 헤더 고정-->
  <script src="js/autoslide.js"></script> 
  <script src="button.js"></script> <!--모바일 메뉴-->
</div>
</body>
</html>