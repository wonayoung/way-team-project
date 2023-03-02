<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
   <title>게시판 리스트 보기</title>
    <!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
        <link href="css/styles.css" rel="stylesheet" />
    <style type="text/css">
     a:link { text-decoration: none; color: black; }           <!-- 클릭하기전의 설정은 선없고 검정색 -->
     a:visited { text-decoration: none; color: black; }     <!-- 방문한뒤의 설정은 밑줄없고 검정 -->
     a:hover { text-decoration: underline; color:blue; } <!-- 마우스가 올라갈때 설정은 아랫줄있고 파랑 -->
    </style>
   
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
          
			
					<div class="container px-4 px-lg-5">
	
<div class="container">
    <div class="menu_01">
      <div class="menu_target">고객센터</div>
  <br>
        <br>
  <div class="left_menu_bar"><a href="notice.jsp" >공지사항</a><br>
          <br>
          <a href="qna1.jsp">자주 묻는 질문</a>
          <br>
          <br>
          <a href="inquirytable.jsp"  style="color: #000099; font-weight: bold;">1:1 문의</a>
          </div>
      </div>
       </div>
								

                
					<div class="inquiry">1:1 문의</div>
<hr class="hr_username1"><p class="blank"></p>
						<div class="row gx-4 gx-lg-5  justify-content-center">

       <form method="post" action="board_Rwrite_process.jsp" name="input">       
        <table width="100%" border="0" cellspacing="2" cellpadding="3" margin="10px">
           <tr>&nbsp;</tr><tr> 
              <td> 
                <div align="center">
                   <input type="hidden" name="idx">
              </td>
           </tr>        
 	   <tr>
 	      <td width="20%" > 
 	         <div class="inquiry_title">문의 유형</div>
 	      </td><br>
 	      <td width="20%" >
			 
 	       <select  >
			   <option selected disabled hidden>선택하세요</option>
			  <option>상품 문의</option>
		     <option>주문 문의</option>
		     <option>배송 문의</option>
		     <option>취소, 환불 문의</option>
		      <option>교환, 반품 문의</option>
		    <option>기타 문의 </option></select></td>
 	   </tr>
 	   <tr>
 	      <td >
 	        <div class="inquiry_title">제목</div>
 	      </td>
 	      <td width="80%">
 	         <input type="text" size="70" name="in_name" Maxlength="20"></td>
 	   </tr>
			<tr>
 	      <td >
 	        <div class="inquiry_title">작성자</div>
 	      </td>
 	      <td >
 	         <input type="text" size="15" name="in_name" Maxlength="20"></td>
 	   </tr>
 	   <tr>
 	      <td >
 	        <div class="inquiry_title">이메일</div>
 	      </td>
 	      <td >
 	         <input type="text" size="15" name="email" Maxlength="30"> &nbsp;@ &nbsp;<input type="text" size="15" name="email" Maxlength="30">&nbsp; <select >
			   <option value="" selected disabled hidden>이메일 선택</option>
			  <option>naver.com</option>
		     <option>hanmail.net</option>
		     <option>hotmail.com</option>
		     <option>nate.com</option>
		      <option>yahoo.co.kr</option>
		    <option>gmail.com</option></select></td>
 	   </tr>
 	   <tr>
 	       <td  style="vertical-align: top" >
 	        <div class="inquiry_title">내용</div>
 	      </td>
 	      <td><textarea rows="15" cols="100%" name="in_content">
	      
 	      
</textarea></td>
 	   </tr>
  	   <tr>
 	      <td >
 	        <div class="inquiry_title">파일첨부</div>
 	      </td>
 	      <td><input type="password" name="file"> <input type="button" value="찾아보기" OnClick="in_check()" class="btn_submitfile"></td>
		   
 	   </tr>
                
               
         </table>
						  <div align="right"> 
                    <input type="button" value="뒤로가기" class="btn_reset3" onClick="location.href='inquirytable.jsp'"> 
<input type="button" value="등록"  class="btn_submit3">
        	  </div>
         <input type="hidden" name="step" >
         <input type="hidden" name="mid" ">
         <input type="hidden" name="rnum" ">         
 
      </form>
	   </div>

			   </div>
</form>
<header class=" py-6"></header>


<a class="github-source"   target="_blank"><i class="fa fa-github"></i></a>
	<!--위로가기 버튼 모든 html에 적용해주세요-->
  <a href="#" class="go-top"></a> 
  

  <!-- Footer-->
  <footer>
    <div class="footer_container">
      <div class="container px-4 px-lg-5 mt-5">
        <div class="footer_text">
          <div class="white">
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