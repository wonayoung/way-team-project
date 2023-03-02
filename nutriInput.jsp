<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8" />
<title>영양소 함량 입력</title>
	 <link href="css/styles.css" rel="stylesheet" />
	
	<!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
	 <script type="text/javascript">
		function checkValue(){
			if(nutri.vitA.value == ""){
				nutri.vitA.value=0;
				//return;
			}
	if(nutri.vitE.value == ""){
			nutri.vitE.value=0;
			//return;
		}
	if(nutri.vitC.value == ""){
			nutri.vitC.value=0;
			//return;
		}
	if(nutri.vitB1.value == ""){
			nutri.vitB1.value=0;
			//return;
		}
	if(nutri.vitB2.value == ""){
			nutri.vitB2.value=0;
			//return;
		}
	if(nutri.vitB6.value == ""){
			nutri.vitB6.value=0;
			//return;
		}
	if(nutri.vitB12.value == ""){
			nutri.vitB12.value=0;
			//return;
		}
	if(nutri.niacin.value == ""){
			nutri.niacin.value=0;
			//return;
		}
	if(nutri.folicAcid.value == ""){
			nutri.folicAcid.value=0;
			//return;
		}
	if(nutri.calcium.value == ""){
			nutri.calcium.value=0;
			//return;
		}
	if(nutri.iron.value == ""){
			nutri.iron.value=0;
			//return;
		}
	if(nutri.zinc.value == ""){
			nutri.zinc.value=0;
			//return;
		}
	nutri.submit();
}

</script>
	
</head>

<body onLoad="MM_preloadImages('images/next.png')" style="overflow-x:hidden; overflow-y:auto;">
			
<%
	String id = (String)session.getAttribute("sid");
	
	if(id!=null)
	{
%>
        <!-- Navigation-->
			
<span class="top_bn_zone"> 
  <!-- Navigation-->

  <span class="container1 px-4 px-lg-5">
    <span class="service"><a href="logout.jsp">로그아웃</a></span>
  </span>
<%
	}
	else
	{
		response.sendRedirect("login.html"); // 로그인 안됐을 시 로그인 페이지로 이동

%>
	        <!-- Navigation--><div class="top_fix_zone" id="topBar">
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
            <li><a href="viewProductBest.jsp">Best</li>
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
              </a> <a href="viewProductByTarget.jsp?nutri1=vitC&nutri2=hyalAcid">섭취대상별</a> <a href="viewProductByNutri.jsp?nutri=vitK">성분별</a> </div>
          </div>
          <a class="nav-link" href="nutriGraph.jsp">권장량 계산</a> <a class="nav-link "  href="event.html" >이벤트</a>
        </ul>
        <div class="d-flex"> 
          
  <!-- Navigation-->
   <span class="container1 px-4 px-lg-5">
      <span class="service"><span href="login.html">로그인 </span>&nbsp;&nbsp; &nbsp; <span href="signUp.jsp"> 회원가입 </span></span>
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
<center>
<section class="py-3">
		  <p class="MD title">권장량 계산</p>
           <div class="sub_title">홈 > 권장량계산</div>
		 </section>
			<div class="container px-4 px-lg-5 mt-5">
		<img src="images/manual.png" width="100%" alt=""/>
			</div>


	<header class=" py-6">

					  					  <header class=" py-6">
          
<div class="footer_title01">영양소 함량 입력</div>
						<div class="container px-4 px-lg-5 mt-5">
							
												
<div class="data2">
 <table width="auto" border="0px" >
  <tbody>
    <tr class="tr_bg2">
		<th scope="col" class="chart_table_border_title " width="10%" >성별</th>
      <th scope="col" width="80%" >
      
          <label>
            <input type="radio" name="RadioGroup1" value="라디오" id="RadioGroup1_0" >
            여성</label>&nbsp;&nbsp;&nbsp;&nbsp;
      
          
          <label>
            <input type="radio" name="RadioGroup1" value="라디오" id="RadioGroup1_1">
            남성</label>
         </th>
		<th scope="col" width="10%" ></th>
    </tr>
	    <tr class="tr_bg2">
      <td class="chart_table_border_title">나이</td>
      <td ><input type="number" class="chart_table_border_input"></td>
      <td ></td>
    </tr>
    <tr class="tr_bg2">
     		<td class="chart_table_border_title">제품명</td>
      <td  ><input type="text" class="chart_table_border_input"></td>
		<td></td>
    </tr>
	  
    <tr class="tr_bg2">
      <td class="chart_table_border_title">비타민E</td>
       <td><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mga-TE</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">비타민C</td>
        <td ><input type="text" class="chart_table_border_input"></td>
		
      <td class="chart_table_unit" >mg</td>
    </tr>
    <tr class="tr_bg2">
		 
      <td class="chart_table_border_title">비타민B1</td>
         <td ><input type="text" class="chart_table_border_input"></td>
		
      <td class="chart_table_unit">mg</td>
    </tr>
    <tr class="tr_bg2">
      <td class="chart_table_border_title">비타민B2</td>
         <td><input type="text" class="chart_table_border_input"></td>
		
      <td class="chart_table_unit">mg</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">비타민B6</td>
        <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mg</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">비타민B12</td>
       <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">ug</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">나이아신</td>
         <td><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mgNE</td>
    </tr>
    <tr class="tr_bg2">
      <td class="chart_table_border_title">엽산</td>
         <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">ug</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">칼슘</td>
       <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mg</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">철분</td>
       <td><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mg</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">아연</td>
         <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">ug</td>
    </tr>
	  <tr class="tr_bg2">
       <td class="chart_table_border_title">오메가3</td>
         <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mg</td>
    </tr>
	  <tr class="tr_bg2">
       <td class="chart_table_border_title">루테인</td>
         <td><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mg</td>
    </tr>
  </tbody>
</table><center>
	<input type="reset" value="취소" class="btn_reset2">
<input type="button" value="입력" onClick="checkValue()" class="btn_submit2">
				</center>
 
</div>
										
						  </div>
						 
					
        </header>
		<div class="py-7"></div>

       
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

</body>
	</html>