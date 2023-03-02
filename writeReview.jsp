<!-- 로그인 후의 메인 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- Link Swiper's CSS -->

<title></title>

	<!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
	<link href="css/styles.css" rel="stylesheet" type="text/css"/>
		<script>
function notLogin()
{
	var prdNo = document.getElementById('prdNo').innerText
	var con = confirm("로그인 후 이용 가능합니다. 로그인 페이지로 이동하시겠습니까?");
	if(con==true){
		location.href="login.html";
		return true;
	}
	else if(con==false){
		location.href="viewDetailProduct.jsp?prdNo="+prdNo+"#2a";
		return true;
	}
}

		</script>
</head>
<%
	String id = (String)session.getAttribute("sid");
	String no = request.getParameter("prdNo");
	if(id == null)
	{
%>
<body onload="notLogin()">
<div id="prdNo" style="display: none;"><%=no%></div>
	
<%
	}
	else
	{
%>
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

  <!-- Navigation-->
   <span class="container1 px-4 px-lg-5">
    <span class="service"><a href="logout.jsp">로그아웃</a></span>
  </span>
 
</div>
            <a class="icon_search" href="searchResults.jsp"></a> 
			 
			  <a class="icon_user" href="myDeliveryTracking.jsp"></a> <a class="icon_cart" href="showCart.jsp"></a>
         
			
        </div>
      </div>
    </div>
  </nav>
</div>
<%


	String DB_URL="jdbc:mysql://localhost:3306/way";   
    String DB_ID="multi";  
    String DB_PASSWORD="abcd"; 
 	 
	Class.forName("org.gjt.mm.mysql.Driver"); 
 	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String sql1 = "select * from product where prdNo = ?";  //제품 정보
	PreparedStatement pstmt1  = con.prepareStatement(sql1);
	pstmt1.setString(1, no);

	ResultSet rs1 = pstmt1.executeQuery();
    rs1.next();

	String name =  rs1.getString("prdName");	

	String sql2 = "select * from member where memId = ?";
	PreparedStatement pstmt2  = con.prepareStatement(sql2);
	pstmt2.setString(1, id);

	ResultSet rs2 = pstmt2.executeQuery();
    rs2.next();

	String memName = rs2.getString("memName");
%>
<!-- Header--> 
	 		<div class="container px-4 px-lg-5">
<div class="inquiry">상품 리뷰 작성</div>
<p class="blank"></p>
						<div class="gx-4 gx-lg-5  justify-content-center">
 <hr>
<table border=0 class="table_border">
<tr>      
    <td  height="200px" width="200px" align="center"><img src="prdImages\<%=no%>_main.jpg" class="card-img-top" /></td>     
	<td  height="200"align="left" style="padding-left:30px;"><font size="2"><%=name%></font></td> 
	
  </tr>  </table> <hr>
       <form method="post" action="uploadReview.jsp" name="input" enctype="multipart/form-data">       
        <table width="100%" border="0" cellspacing="2" cellpadding="3" margin="10px">
           <tr>&nbsp;</tr><tr> 
              <td> 
                <div align="center">
                   <input type="hidden" name="idx" >
              </td>
           </tr>        
 			<input type="hidden" value="<%=no%>" name="prdNo">
 	  
			<tr>
 	      <td >
 	        <div class="inquiry_title">작성자</div>
 	      </td>
 	      <td >
 	         <input type="text" value="<%=memName%>" size="15" name="name" Maxlength="20"></td>
 	   </tr>
 	   <tr>
 	       <td style="vertical-align: top">
 	        <div class="inquiry_title">내용</div>
 	      </td>
 	      <td><textarea rows="15" cols="100%" name="content" placeholder="상품 리뷰를 작성해 주세요." style="width: 100%;">
	      
 	      
</textarea></td>
 	   </tr>
  	   <tr>
 	      <td >
 				 <div class="inquiry_title">이미지 첨부</div>
 	      </td>
 	      <td> <input type="file" name="reviewImg" size="80"></td>
		   
 	   </tr>
                 <tr>
 	      <td >
 	        <div class="inquiry_title">만족도</div>
 	      </td>
 	      <td>
 	        <label>
 	          <input type="radio" name="star" value="5" id="RadioGroup1_0">
 	          <div class="star_count_05"> </div></label>
 	       
						     
						      <label>
						        <input type="radio" name="star" value="4" id="RadioGroup1_1">
	       <div class="star_count_04"> </div></label>
						      
						      <label>
						        <input type="radio" name="star" value="3" id="RadioGroup1_2">
						      <div class="star_count_03"> </div></label>
						     
						      <label>
						        <input type="radio" name="star" value="2" id="RadioGroup1_3">
						         <div class="star_count_02"> </div></label>
						      
						      <label>
						        <input type="radio" name="star" value="1" id="RadioGroup1_4">
		           <div class="star_count_01"> </div></label></td>
		   
 	   </tr>
                <tr>
 	      <td >
 	        <div class="inquiry_title">성별</div>
 	      </td>
 	      <td><div class="sex_select">
 	        <p>
 	          <label>
 	            <input type="radio" name="sex" value="여성" id="RadioGroup2_0">
 	            여성</label>&nbsp; &nbsp; 
 	          
 	          <label>
 	            <input type="radio" name="sex" value="남성" id="RadioGroup2_1">
 	            남성</label>&nbsp; &nbsp; 
 	          
 	          <label>
 	            <input type="radio" name="sex" value="선택안함" id="RadioGroup2_2" checked>
 	            선택안함</label>
 	          
 	          </p>
 	        </div></td>
		   
 	   </tr>
<tr>
 	      <td >
 	        <div class="inquiry_title">연령대</div>
 	      </td>
 	      <td><div class="sex_select">
 	        <p>
 	          <label>
 	            <input type="radio" name="ageGroup" value="10대" id="RadioGroup2_0">
 	            10대</label>&nbsp; &nbsp; 
 	          
 	          <label>
 	            <input type="radio" name="ageGroup" value="20대" id="RadioGroup2_1">
 	            20대</label>&nbsp; &nbsp; 
 	          
 	          <label>
 	            <input type="radio" name="ageGroup" value="30대" id="RadioGroup2_2">
 	            30대</label>&nbsp; &nbsp; 
 	            <label>
 	            <input type="radio" name="ageGroup" value="40대" id="RadioGroup2_2">
 	            40대</label>&nbsp; &nbsp; 
 	            <label>
 	            <input type="radio" name="ageGroup" value="50대 이상" id="RadioGroup2_2">
 	            50대 이상</label>&nbsp; &nbsp; 
 	            <label>
 	            <input type="radio" name="ageGroup" value="선택안함" id="RadioGroup2_2" checked>
 	            선택안함</label>
 	          </p>
 	        </div></td>
		   
 	   </tr>
         </table><hr>
						  <div align="right">
						   
						      
						     
					       
                    <input type="reset" value="취소" class="btn_reset3">
<input type="submit" value="등록" onClick="" class="btn_submit3">
        	  </div>
         <input type="hidden" name="step" >
         <input type="hidden" name="mid" >
         <input type="hidden" name="rnum" >         
  
      </form>
	   </div></div>

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
 <%
	}
%>
</body>
</html>