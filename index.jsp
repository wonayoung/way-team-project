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
<style>
  
  .swiper {
    position: relative;
    top:25%;
      width: 100%;
      height:70%;
    }

    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background-color:transparent;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .swiper-slide img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
</style>
	<!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
	<!-- 슬라이드를 위한 소스 -->
  <link href="css/text.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
  <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css" rel="stylesheet" type="text/css"/>
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
          <li><a  href="event.jsp"">건강정보</a></li>
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
          <a class="nav-link" href="nutriGraph.jsp">권장량 계산</a> <a class="nav-link "  href="event.jsp" >건강정보</a>
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

<!-- Header--> 
<!-- keyimage-->

	
<div class="sliderContainer">
  <div class="slider single-item">
    
    <div class="imgkeyimage"><a href="nutriGraph.jsp"><img src="images/keyimages/keyimage2.png"class="keyimage3"></a></div>
    <div class="imgkeyimage"><a href="he_check.jsp"><img src="images/keyimages/keyimage3.png" class="keyimage3"></a></div>
    <div class="imgkeyimage"><a href="company.jsp"><img src="images/keyimages/keyimage1.png" class="keyimage3"></a></div>
  </div>
  <div class="progressBarContainer">
    <div class="item">
    
      <span data-slick-index="0" class="progressBar"></span> </div>
    <div class="item">
    
      <span data-slick-index="1" class="progressBar"></span> </div>
    <div class="item">
     
      <span data-slick-index="2" class="progressBar"></span> </div>
  </div>
</div>

<!-- Section-->
	
      <section class="main_py-5">
        <div class="container  px-4 px-lg-5"> 
  <p class="way_title">BEST WAY</p>
  <div class="worry_text">WAY에서 가장 인기있는 제품을 소개합니다</div>
</div>
  <div class="container px-4 px-lg-5 mt-5">
    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4">
	
<%
	String DB_URL="jdbc:mysql://localhost:3306/way";
    String DB_ID="multi"; 
    String DB_PASSWORD="abcd";
 	 
	Class.forName("org.gjt.mm.mysql.Driver");  
 	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String sql1 = "select * from product ORDER BY salesRate DESC LIMIT 4";
	PreparedStatement pstmt = con.prepareStatement(sql1);

	ResultSet rs1 = pstmt.executeQuery();

	while(rs1.next())
	{
		String prdNo = rs1.getString("prdNo");
		String prdName = rs1.getString("prdName");
		int prdPrice = rs1.getInt("prdPrice");
		int salePrice = rs1.getInt("salePrice");
%>



      <div class="col mb-5">
        <div class="card h-100"> 
          <!-- Product image--> 
          <a href="viewDetailProduct.jsp?prdNo=<%=prdNo%>"><img src="images/image/<%=prdNo%>_sub2.jpg"  class="card-img-top" /></a>
          
          <!-- Product details-->
          <div class="card-body p-4">
            <div class="text-center"> 
              <!-- Product name-->
			<div class="tag_card">NEW</div><div class="tag_card_keyword">여성</div>
				  <h5  class="fw-bolder"><a href="viewDetailProduct.jsp?prdNo=<%=prdNo%>" style="color: #000"><%=prdName%></a> </h5>
          <div class="text_tag">#효소 #유산균효소</div> <div class="fw-bolder1">
								    <div class="money"><%=prdPrice%>원</div>
                                  <span  class="money_sell"><%=salePrice%>원</span></div>
					  
              <!-- Product price--> 
              
            </div>
          </div>
          
        </div>
		</div>

<%
	}
%>
 
    </div>
  </div>
</section>
<div class="worry_bgcolor">
<div class="container  px-4 px-lg-5"> 

<div class="worry_title_box">
       <p class="worry_title">건강고민</p>
      
    <div class="worry_text">지금 당신의 건강고민은 무엇인가요?
      <div class="worry_tab_top">
      <div class="worry_tab" >뇌</div>
      <div class="worry_tab" >혈관</div>
      <div class="worry_tab" >잇몸</div><br>
      <div class="worry_tab" >피부</div>
      <div class="worry_tab" >관절</div>
      <div class="worry_tab" >소화</div><br>
      <div class="worry_tab" >혈압</div>
      <div class="worry_tab" >눈</div>
      <div class="worry_tab" >간</div>
    </div>
      <div class="btn_worry_tab"></div>  <div class="btn_worry_tab"></div>
      </div></div> </div> 
      <div class="container  px-4 px-lg-5"> 
      <section class="bg_worry">
        <div class="swiperbox">
        <div class="swiper mySwiper">
          <div class="swiper-wrapper">
            <div class="swiper-slide"><div class="col">
              <div class="card h-100"> 
                <!-- Product image--> 
                <a href="viewDetailProduct.jsp?prdNo=calcium_002"><img src="images/image/calcium_002_sub2.jpg" class="card-img-top"></a>
                
                <!-- Product details-->
                <div class="card-body p-4">
                  <div class="text-center"> 
                    <!-- Product name-->
            <h5 class="fw-bolder"><a href="viewDetailProduct.jsp?prdNo=calcium_002" style="color: #000">GNM 칼슘 마그네슘 아연 비타민D</a> </h5>
               <div class="fw-bolder1">
                          <div class="money">57900원</div>
                                        <span class="money_sell">28900원</span></div>
                  
                    <!-- Product price--> 
                    
                  </div>
                </div>
                
              </div>
          </div></div>
          <div class="swiper-slide"><div class="col">
            <div class="card h-100"> 
              <!-- Product image--> 
              <a href="viewDetailProduct.jsp?prdNo=calcium_002"><img src="images/image/calcium_002_sub2.jpg" class="card-img-top"></a>
              
              <!-- Product details-->
              <div class="card-body p-4">
                <div class="text-center"> 
                  <!-- Product name-->
           <h5 class="fw-bolder"><a href="viewDetailProduct.jsp?prdNo=calcium_002" style="color: #000">GNM 칼슘 마그네슘 아연 비타민D</a> </h5>
              <div class="fw-bolder1">
                        <div class="money">57900원</div>
                                      <span class="money_sell">28900원</span></div>
                
                  <!-- Product price--> 
                  
                </div>
              </div>
              
            </div>
        </div></div>
        <div class="swiper-slide"><div class="col">
          <div class="card h-100"> 
            <!-- Product image--> 
            <a href="viewDetailProduct.jsp?prdNo=calcium_002"><img src="images/image/calcium_002_sub2.jpg" class="card-img-top"></a>
            
            <!-- Product details-->
            <div class="card-body p-4">
              <div class="text-center"> 
                <!-- Product name-->
        <h5 class="fw-bolder"><a href="viewDetailProduct.jsp?prdNo=calcium_002" style="color: #000">GNM 칼슘 마그네슘 아연 비타민D</a> </h5>
           <div class="fw-bolder1">
                      <div class="money">57900원</div>
                                    <span class="money_sell">28900원</span></div>
              
                <!-- Product price--> 
                
              </div>
            </div>
            
          </div>
      </div></div>
      <div class="swiper-slide"><div class="col">
        <div class="card h-100"> 
          <!-- Product image--> 
          <a href="viewDetailProduct.jsp?prdNo=calcium_002"><img src="images/image/calcium_002_sub2.jpg" class="card-img-top"></a>
          
          <!-- Product details-->
          <div class="card-body p-4">
            <div class="text-center"> 
              <!-- Product name-->
      <h5 class="fw-bolder"><a href="viewDetailProduct.jsp?prdNo=calcium_002" style="color: #000">GNM 칼슘 마그네슘 아연 비타민D</a> </h5>
          <div class="fw-bolder1">
                    <div class="money">57900원</div>
                                  <span class="money_sell">28900원</span></div>
            
              <!-- Product price--> 
              
            </div>
          </div>
          
        </div>
    </div></div>
    <div class="swiper-slide"><div class="col">
              <div class="card h-100"> 
                <!-- Product image--> 
                <a href="viewDetailProduct.jsp?prdNo=calcium_002"><img src="images/image/calcium_002_sub2.jpg" class="card-img-top"></a>
                
                <!-- Product details-->
                <div class="card-body p-4">
                  <div class="text-center"> 
                    <!-- Product name-->
                <h5 class="fw-bolder"><a href="viewDetailProduct.jsp?prdNo=calcium_002" style="color: #000">GNM 칼슘 마그네슘 아연 비타민D</a> </h5>
                <div class="fw-bolder1">
                          <div class="money">57900원</div>
                                        <span class="money_sell">28900원</span></div>
                  
                    <!-- Product price--> 
                    
                  </div>
                </div>
                
              </div>
          </div></div>
          </div>
        
        </div></div>
      
    
  
</section>
</div> </div>
<!-- Section-->
<div class="container  px-4 px-lg-5"> 
<section class="main_py-5">
  <div class="product_h">
    <p class="way_title">건강 정보</p>
    <div class="worry_text">최신 건강 정보로 건강 지키기</div>
    </div>
    <div class="container px-4 px-lg-5 mt-5">
      <div class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-3 row-cols-xl-3">
    
           
      <div class="col mb-5">
        <div class="card h-100"> 
          <a href=""><img src=""  class="worry_card-img-top" /></a>
       
          <div class="card-body p-4">
          </div>
          
        </div>
		</div>
    <div class="col mb-5">
      <div class="card h-100"> 
        <a href=""><img src=""  class="worry_card-img-top" /></a>
        <div class="card-body p-4">
        </div>
        
      </div>
  </div>
  <div class="col mb-5">
    <div class="card h-100"> 
      <a href=""><img src=""  class="worry_card-img-top" /></a>
      <div class="card-body p-4">
      </div>
</div>
</div>
</div>
</div>
<div class="news_card">
    <a href=""><img src=""  class="worry_card-img-top_big" /></a>
  </div>
<div class="news_card_text">
<div class="news_card_title">
비타민K의 재발견…
강력한 항산화제로 ‘세포 소멸’ 막는다</div><br><div class="news_card_subtitle">
비타민K가 충분히 환원된 형태로 변하면 강력한 항산화제로 작용해 ‘페롭토시스'(ferroptosis)를 억제한다는 연구 결과가 나왔습니다. ···
</div>
<button class="news_card_go_btn">정보 확인하기 ></button>
</section>
</div>

<div class="banner">
  <div class="container px-4 px-lg-5"><span style="font-weight: 200">안전한 영양제 섭취</span><br>
    <span style="font-weight: 700; " > 건강으로 가는 올바른 길</span> </div>
</div>
<div class="wrapper">
  <section class="main_py-5">
    <div class="container  px-4 px-lg-5"> 
<p class="way_title">솔직한 리뷰</p>
<div class="worry_text">실 사용자의 솔직한 리뷰를 만나보세요</div>
</div>
<div class="container px-4 px-lg-5 mt-5">
<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-3">



  <div class="">
    <div class="card h-100 review_card_border"> 
      <!-- Product image--> 
      <a href=""><img src="images/image/enzyme_001_sub3.jpg"  class="review_card-img-top02" /></a>
      
      <!-- Product details-->
      <div class="card-body p-4">
        <div class="text-center review_padding"> 
          <div class="good_review_title">만족해요</div>
          <div class="star_review_box"></div><br><br>
         <div class="detail_review_box"> 너무 좋아요 몸이 좋아진 기분이에요
다른사람에게도 꼭 추천하고 싶어요 </div>
          
        </div>
      </div>
      
    </div>
</div>
<div class="">
  <div class="card h-100 review_card_border"> 
    <!-- Product image--> 
    <a href=""><img src="images/image/omega3_001_sub1.jpg"  class="review_card-img-top02" /></a>
    
    <!-- Product details-->
    <div class="card-body p-4">
      <div class="text-center review_padding"> 
        <div class="good_review_title">아주 좋아요</div>
        <div class="star_review_box"></div><br><br>
       <div class="detail_review_box"> 확실히 효과가 있는 것 같아서 좋아요
다른사람에게도 꼭 추천하고 싶어요 </div>
      </div>
    </div>
    
  </div>
</div>
<div class="">
  <div class="card h-100 review_card_border"> 
    <!-- Product image--> 
    <a href=""><img src="images/image/omega3_005_sub2.jpg"  class="review_card-img-top02" /></a>
    
    <!-- Product details-->
    <div class="card-body p-4">
      <div class="text-center review_padding"> 
        <div class="good_review_title">나쁘지 않아요</div>
        <div class="star_review_box"></div><br><br>
       <div class="detail_review_box">  부모님이 항상 잘 섭취하고 계세요!
        저도 많이 신경쓰지 않아도 되서 좋아요.</div>
      </div>
    </div>
    
  </div>
</div>
</div>
</div>
</section>
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
			 <a class="btn_chat" href="inquiry.jsp">1:1문의하기</a><br>
       <a class="btn_chat1" href="qna1.jsp">고객센터</a>
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
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 3,
      spaceBetween: 30,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    });
  </script>
	 <script src="js/chat.js"></script> 
  <script src="js/top.js"></script> <!-- top버튼 생성-->
  <script src="js/autonav.js"></script> <!-- 헤더 고정-->
  <script src="js/autoslide.js"></script> 
  <script src="button.js"></script> <!--모바일 메뉴-->
</div>
</body>
</html>