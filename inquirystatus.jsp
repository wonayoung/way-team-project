<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<html lang="en">
   <head>
   <title>게시판 리스트 보기</title>
    
        <link href="css/styles.css" rel="stylesheet" />
   <!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
   
   </head>      

   
   
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
            <a href="viewProductAll.jsp">상품</a>
            <ul>
              <li><a href="viewProductBest.jsp">Best</a></li>
              <li><a href="viewProductAll.jsp">전체상품</a></li>
              <li><a href="viewProductByTarget.jsp">섭취대상별</a></li>
              <li><a href="viewProductByNutri.jsp">성분별</a></li>
              </li>
            </ul>
            <li><a href="nutriGraph.jsp">권장량 계산</a></li>
            <li><a href="#">이벤트</a></li>
          </ul>
        </nav>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
            <div class="dropdown"> <a class="nav-link"  href="healthconcerns.jsp?concerns">건강고민</a> </div>
            <div class="dropdown"> <a class="nav-link"  href="viewProductAll.jsp" >상품</a>
              <div class="dropdown-content"> <a href="viewProductAll.jsp">
                <div class="nav_pad">전체상품</div>
          <a href="viewProductBest.jsp">Best</a>
                </a> <a href="viewProductByTarget.jsp?nutri1=vitC&nutri2=hyalAcid">섭취대상별</a> <a href="viewProductByNutri.jsp?nutri=vitK">성분별</a> </div>
            </div>
            <a class="nav-link" href="nutriGraph.jsp">권장량 계산</a> <a class="nav-link "  href="event.html" >이벤트</a>
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
          
			
					<div class="container px-4 px-lg-5">
	

            <div class="container">
              <div class="menu_01">
          <div class="menu_target">고객센터</div>
          <br>
                <br>
          <div class="left_menu_bar"><a>공지사항</a><br>
                  <br>
                  <a>자주 묻는 질문</a>
                  <br>
                  <br>
                  <a style="color: #000099; font-weight: bold;">1:1 문의</a>
                  </div>
              </div>
                 </div>
								
<div class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-1 row-cols-xl-1 justify-content-center">
<div class="col mb-5">
                
					<div class="inquiry">1:1문의</div>
<hr class="hr_username1"><p class="blank"></p>
     <div align="center">
        

  

      <table width="100%" border="0" cellspacing="2" cellpadding="3">
 	   <tr class="bg_color1">
 	      <td width="10%" height="20">
 	         <div align="center"><font size=2>답변상태</font></div>
 	      </td>
 	      <td width="70%" height="20">
 	         <div align="center"><font size=2>제 목</font></div>
 	      </td> 	      
 	     
 	   
 	      <td width="10%" height="20" colspan="2">
 	         <div align="center"><font size=2>작성자</font></div>
 	      </td>

 	      <td width="10%" height="20" colspan="2">
 	         <div align="center"><font size=2>작성일</font></div>
 	      </td>
 	   </tr>
 	     <!--미답변일 경우 테이블-->
        <div class="summary_unanswered">
 	   <tr bgcolor='white'>
 	      <td width="10%"  style="vertical-align: top">
 	         <div class="unanswered">미답변</div>
 	      </td>
 	      <td width="70%">
  
 	   
<div align="left">
<div class="summary_service">
<details>
   <!--제목-->
	<summary> 
	  <span class="upload_title">업로드</span></summary>
    <!--자세한 내용-->
      <div class="summary_service_text">금액이 틀리게 나오는데..선착순은 끝나거에요?</div>
</details>
	
	</div>
</div></div>   </font></a>
 	      </td> 	      
 	      <td colspan="2" width="10%">
 	         <div class="inquirystaus_name">abcd****</div>
 	      </td>

 	          <td colspan="2" width="10%">
 	         <div class="inquirystaus_name">2023-02-19</div>
 	      </td>   
 	     
 	   </tr>  	   

    <!--답변 완료일 경우 테이블-->
   	<table border='0' width='100%' cellpadding='0' cellspacing='0' style="border-top: 1px solid #dddddd;">
	<tr>
	<td width="10%" colspan="2"  style="vertical-align: top">
 	         <div class="unanswered">답변 완료</div>
 	      </td>
    <td width="70%">
  
 	      
<div class="summary_service">
<details>
  <!--문의 제목-->
	<summary> 
	  <span class="upload_title">업로드</span></summary>
<details>
      <!--자세한 내용-->
<summary> 
      <div class="summary_service_text">금액이 틀리게 나오는데..선착순은 끝나거에요?</div>
</summary>
<!--답변 완료 대답-->
     <div class="summary_answer_hr"> <div class="summary_answer">답변</div><div class="summary_service_text1">금액이 틀리게 나오는데..선착순은 끝나거에요?</div>
    </div>
</details>

</details>
	
	
</div></font></a>
 	      </td> 	  
    <td colspan="2" width="10%">
 	         <div class="inquirystaus_name">abcd****</div>
 	      </td>

 	          <td colspan="2" width="10%">
 	         <div class="inquirystaus_name">2023-02-19
        </div>
 	      </td>   
 	     
 	</tr>
</table>  


     
			</div>
	   </div>
   </div>
			   </div>
</form>
<header class=" py-6"></header>
				

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
  <a class="btn_chat" href="inquirystatus.jsp">1:1문의하기</a>
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