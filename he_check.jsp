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
        <title></title>
		
        <!-- Favicon-->
        <script type="text/javascript" src="js_way.js">
		</script>
        <link href="css/styles.css" rel="stylesheet" />
    </head>
	
	<!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
	<!-- 슬라이드를 위한 소스 -->
  <link href="css/slick.css" rel="stylesheet" type="text/css"/>
<link href="css/styles.css" rel="stylesheet" type="text/css"/>
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
          <div class="dropdown"> <a class="nav-link"  href="healthconcerns.jsp?concerns">건강고민</a> </div>
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
       <div id="page">
        <div class="pane" id="page1"><div>
          <div class="container  px-4 px-lg-5"> 
            <div class="panebox">
              <span class="worry_logo"></span>   <div class="panetitle"> 의 맞춤 영양제 추천</div>
         <div class="panesubtext"> <br>간단한 설문을 통해 나에게 필요한 영양성분을 알고<br>
          맞춤 제품을 추천 받아보세요!<br></div>
          <div class="panenotice">*질병의 진단과 치료는 전문 의료기관을 이용하세요. </div>

          <a href="#page2"><div class="worry_start">시작하기 -></div></a>
        </div> 
        <div class="paneimg"></div>
      </div></div></div>
         <div class="pane" id="page2">
          <div class="container  px-4 px-lg-5"> 
            <div class="worry_survey_title"> WAY 1. 기본 정보
              <div class="worry_survey_subtitle">건강 분석 및 추천을 위해 기본 정보를 입력해주세요.
              </div> </div>
            <div class="panebox_center">
<div class="panebox_left">
		   

  <label class="worry_pane_m">
    <input type="radio" name="RadioGroup1" value="남성" id="RadioGroup1_0" >남성</label>

  <label class="worry_pane_w">
    <input type="radio" name="RadioGroup1" value="여성" id="RadioGroup1_1" class="worry_pane_m">여성</label>
  </div>




<div class="panebox_right">
<table width="100%" border="1">
  <tbody>
    <tr>
      <td width="15%">나이</td>
      <td><input type="text" class="worry_table_border_input" placeholder=""></td>
  
    </tr>
    <tr>
      <td>몸무게</td>
      <td><input type="text" class="worry_table_border_input" placeholder="kg"></td>
    </tr>
    <tr>
      <td>키</td>
      <td><input type="text" class="worry_table_border_input" placeholder="cm"></td>
    </tr>
  
  </tbody>
</table></div>
</div>
<a href="#page1"><div class="worry_start1"></div></a>
  <a href="#page3"><div class="worry_start2"></div></a>
</div></div>
        <div class="pane" id="page3"><div>
          <div class="container  px-4 px-lg-5"> 
            <div class="worry_survey_title"> WAY 2. 건강 고민
              <div class="worry_survey_subtitle">현재 고민인 부위를 최대 3개 선택해주세요.
              </div> </div>
              <div class="panebox_center2"> 
                <label class="select_input_worry">
                  <input type="checkbox" name="checkbox" value="뇌" id="checkbox" style="display:none">뇌</label>
                <label   class="select_input_worry">
                  <input type="checkbox" name="checkbox" value="피부" id="checkbox" style="display:none">피부</label>
                  <label class="select_input_worry">
                    <input type="checkbox" name="checkbox" id="checkbox" style="display:none">혈압</label>
                    <label  class="select_input_worry">
                      <input type="checkbox" name="checkbox"  id="checkbox" style="display:none">혈액순환</label>
                      <label  class="select_input_worry">
                        <input type="checkbox" name="checkbox"  id="checkbox" style="display:none">관절</label>
              </div>  <div class="panebox_center2">
  
                <label  class="select_input_worry">
                  <input type="checkbox" name="checkbox"  id="checkbox" style="display:none">눈</label>
                  <label  class="select_input_worry">
                    <input type="checkbox" name="checkbox"  id="checkbox" style="display:none">잇몸/치아</label>
                    <label  class="select_input_worry">
                      <input type="checkbox" name="checkbox"  id="checkbox" style="display:none">소화/장</label>
                      <label class="select_input_worry">
                        <input type="checkbox" name="checkbox"  id="checkbox" style="display:none">간</label>
                        <label class="select_input_worry">
                          <input type="checkbox" name="checkbox"  id="checkbox" style="display:none">건강 고민이 없어요</label>
              </div>
              
<a href="#page2"><div class="worry_start3"></div></a>
<a href="#page4"><div class="worry_start4"></div></a>
            </div>
        </div></div>
        <div class="pane" id="page4"><div><div class="container  px-4 px-lg-5"> 
          <div class="worry_survey_title"> WAY 3. 건강 증상 - 눈
            <div class="worry_survey_subtitle">해당하는 세부 증상을 모두 선택해주세요.
            </div> </div>
            <a href="#page3"><div class="worry_start5"></div></a>
            <div class="panebox_center1"> 
             
            <div class="pane_float_left"></div>
         <div class="pane_float_rightbox"> <div class="pane_float_right">눈이 건조하고 뻐근하게 느껴져요</div>
          <div class="pane_float_right">눈이 쉽게 충혈돼요</div>
          <div class="pane_float_right">어두우면 사물이 잘 안보여요</div>
          <div class="pane_float_right">눈 앞이 뿌옇게 보여요</div>
          <div class="pane_float_right">시력이 떨어진 것 같아요</div>
        </div>
        </div>
        <a href="#page5"><div class="worry_start6"></div></a>
          </div>
        
          
          </div></div>
        <div class="pane" id="page5"><div><div class="container  px-4 px-lg-5"> 
          <div class="worry_survey_title"> WAY 3. 건강 증상 - 눈
            <div class="worry_survey_subtitle">해당하는 세부 증상을 모두 선택해주세요.
            </div> </div>
            <a href="#page4"><div class="worry_start5"></div></a>
            <div class="panebox_center1"> 
              <div class="pane_float_left_img4"></div>
            <div class="pane_float_right_img4">
            <div class="pane_float_left_title">현재 흡연중이신가요?</div>
          <div class="pane_float_left01">아니오</div>
          <div class="pane_float_left02">네</div>
          <div class="pane_float_left_title">영양제 복용 후 속쓰림 증상이 종종 있나요?</div>
          <div class="pane_float_left01">아니오</div>
          <div class="pane_float_left02">네</div>
          <div class="pane_float_left_title"> 음식에 대한 알러지 반응이 자주 나타나는 편인가요?</div>
          <div class="pane_float_left01">아니오</div>
          <div class="pane_float_left02">네</div>
        </div> </div>
        <a href="#page6"><div class="worry_start7"></div></a>
          </div>
         
          
          </div></div>
        <div class="pane" id="page6"><div>Last</div></div>

      </div>
      
				 
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


  <!-- Footer-->
  <footer>
    <div class="footer_container">
      <div class="container px-4 px-lg-5">
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
  <script src="js/question.js"></script> 
	 <script src="js/chat.js"></script> 
  <script src="js/autonav.js"></script> <!-- 헤더 고정-->
  <script src="js/autoslide.js"></script> 
  <script src="button.js"></script> <!--모바일 메뉴-->
</div>
</body>
</html>