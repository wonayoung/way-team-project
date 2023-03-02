<!-- 로그인 후의 메인 페이지 --> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
      <!-- Link Swiper's CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />
        <title></title>
		<style>
  .swiper {
        width: 100%;
        height: 100%;
      }

      .swiper-slide  {
        text-align: center;
        font-size: 18px;
	
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
			</style>
        
        <link href="css/styles.css" rel="stylesheet" />
    </head>
<body>
<%
	String id = (String)session.getAttribute("sid");
	
	if(id==null)
	response.sendRedirect("index.html");
%>
	 <form>
			<body style="overflow-x:hidden; overflow-y:auto;">
        <!-- Navigation-->
<div class="container1 px-4 px-lg-5">
					 <div class="userlogin" href="logout.jsp"><a href="logout.jsp">로그아웃</a></div>
		 <div class="service" href="#">고객센터</div>
			</div>
        <nav class="navbar navbar-expand-lg navbar-light">
			
          <div class="container px-4 px-lg-5">
				
                <div class="navbar-brand"  onclick='window.location.href = "index.jsp"'></div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					  <div class="dropdown">
          <a class="nav-link"  href="healthconcerns.jsp">건강고민</a>
                         <div class="dropdown-content">
        <a href="#">link 1</a>
        <a href="#">link 2</a>
        <a href="#">link 3</a>
      </div>  </div>
                    
					  <div class="dropdown">
                        <a class="nav-link"  href="viewProduct.jsp" >상품</a>
						<div class="dropdown-content">
        <a href="#">link 1</a>
        <a href="#">link 2</a>
							  <a href="#">link 3</a>
      </div>
                      </div>    
                      <a class="nav-link" href="nutriGraph.jsp">권장량 계산</a>
					
                      <a class="nav-link "  href="#" >이벤트</a>
					
                           
                    </ul>
                  <div class="d-flex">
					  <!--검색창-->
                    <form name="searchPrd" method="get" action="searchResult.jsp">
						<input type="search" name="keyword" class="btn img_bar" placeholder="검색어를 입력하세요" onkeydown="onEnterSubmitSearch()">
					</form> 
                 
                 </div>
				  <div class="icon_user"></div>
					 <div class="icon_cart"></div>
            </div>
            </div>
        </nav>
				
        			
        <!-- Header-->
<header class="bg-dark keyim" >
           <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide img1"></div>
        <div class="swiper-slide img2"onclick='window.location.href = "nutriGraph.jsp"'></div>
        <div class="swiper-slide img3" onclick='window.location.href = "login.html"'></div>
      </div>
      <div class="swiper-scrollbar"></div>
			 
			   
    </div>
       </header>
        <!-- Section-->
        <section class="py-5">
			<p class="MD title">MD가 추천하는 상품</p>
		 <div class="container  px-4 px-lg-5">  <div class="next"><a href="#">더보기 ></a></div></div>
    <div class="container px-4 px-lg-5 mt-5">
		
<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
          <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="images/image/enzyme_001_sub2.jpg"  class="card-img-top" />

                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <div class="fw-bolder">바이탈헬스 바이탈슬림<br> 리얼컷 발효 효소
									
									</div>
								  <div class="fw-bolder1">
								    <div class="money">58,000원</div>
                                  <span style="color: #000099; font-weight: bolder;">29,000원</span></div>
                                    <!-- Product price-->
                                    
                              </div>
                          </div>
                            
            </div>
        </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            
                          <!-- Product image-->
                               <img src="images/image/hyalAcid_001_sub2.jpg" class="card-img-top"   >
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">GC녹십자웰빙<br> 그린픽 피부건강</h5>
                                    <!-- Product price-->
                                    <div class="fw-bolder1"><div class="money">10,500원</div>
   <span style="color:  #000099; font-weight: bolder;">7,500원</span></div>
                                </div>
                          </div>
                           
                      </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            
                          <!-- Product image-->
                               <img src="images/image/lacto_001_sub4.jpg" class="card-img-top"   >
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">지큐랩 100억<br> 생유산균 골드</h5>
                                    <!-- Product price-->
                                    <div class="fw-bolder1"><div class="money">35,000원</div>
   <span style="color:  #000099; font-weight: bolder;">33,250원</span> </div>
                                </div>
                          </div>
                           
                      </div>
                    </div>
                     <div class="col mb-5">
                        <div class="card h-100">
                            
                          <!-- Product image-->
                               <img src="images/image/omega3_002_sub3.jpg" class="card-img-top"   >
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">프리솔라 초임계 <br>알티지오메가3</h5>
                                    <!-- Product price-->
                                    <div class="fw-bolder1"><div class="money">45,000원</div>
   <span style="color: #000099; font-weight: bolder;">39,000원</span></div>
                                </div>
                          </div>
                           
                       </div>
                    </div>
               
      </div>
    </div>
	</section> 
                  <!-- Section-->
			<!-- Section-->
			
<section class="bg_worry">
    <section class="py-5">
		<p class="worry">건강고민</p>
<div class="worry_text">지금 당신의 건강고민은 무엇인가요?
    <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-3 row-cols-md-3  justify-content-center">
					
                     <div class="col mb-5" >
                        <div class="h-100">
                            <!-- Product image-->
                            <div  class="card-img-top1"  onclick="location.href='healthconcerns.jsp';">
                              <div class="img_iocn"></div>
                              뇌 건강이 걱정돼요
                          </div>
							
                      </div>
                  </div>
                
                    <div class="col mb-5">
                        <div class="h-100">
                            
                          <!-- Product image-->
                               <div  class="card-img-top2" onclick="location.href='healthconcerns.jsp';">
                            
                                 피부가 칙칙해요
                          </div>
                      </div>
                  </div>
					
					
                    <div class="col mb-5">
                        <div class="h-100">
                            
                          <!-- Product image-->
                               <div class="card-img-top3"  onclick="location.href='healthconcerns.jsp';">혈압이 높아요
                              </div>
                      </div>
                  </div>
					
                  
        </div>
		<div class="row gx-4 gx-lg-5 row-cols-3 row-cols-md-3  justify-content-center">
                    <div class="col mb-5" >
                        <div class="h-100">
                            <!-- Product image-->
                            <div  class="card-img-top4" onclick="location.href='healthconcerns.jsp';">혈액순환이 안돼요
                          </div>
							
                      </div>
                  </div>
                
                    <div class="col mb-5">
                        <div class="h-100">
                            
                          <!-- Product image-->
                               <div  class="card-img-top5"  onclick="location.href='healthconcerns.jsp';">관절통증이 있어요
                          </div>
                      </div>
                  </div>
					
					
                    <div class="col mb-5">
                        <div class="h-100">
                            
                          <!-- Product image-->
                               <div class="card-img-top6"  onclick="location.href='healthconcerns.jsp';">눈이 건조하고 시려요
                              </div>
                      </div>
                  </div>
					
                  
        </div><div class="row gx-4 gx-lg-5 row-cols-3 row-cols-md-3  justify-content-center">
                    <div class="col mb-5" >
                        <div class="h-100">
                            <!-- Product image-->
                            <div  class="card-img-top7" onclick="location.href='healthconcerns.jsp';">잇몸에서 피가 나요
                          </div>
							
                      </div>
                  </div>
                
                    <div class="col mb-5">
                        <div class="h-100">
                            
                          <!-- Product image-->
                               <div  class="card-img-top8"  onclick="location.href='healthconcerns.jsp';">소화가 잘 안돼요
                          </div>
                      </div>
                  </div>
					
					
                    <div class="col mb-5">
                        <div class="h-100">
                            
                          <!-- Product image-->
                               <div class="card-img-top9" onclick="location.href='healthconcerns.jsp';">간이 나빠요
                              </div>
                      </div>
                  </div>
					
                   </div>
      </div></div>
    </section></section>
    
    
				<div class="banner"> <div class="container px-4 px-lg-5"><span style="font-weight: 200">안전한 영양제 섭취</span><br><span style="font-weight: 700; " > 건강으로 가는 올바른 길</span>
					
       </div></div>
			 <!-- Section-->
<section class="py-5">
          <div class="product_h">
            <p class="MD title">전제품</p>
		    <div class="container  px-4 px-lg-5">  <div class="next"><a href="#">더보기 ></a></div></div>
			
		    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		    <div class="product_btn"></div></div>
<div class="container px-4 px-lg-5 mt-5">
      <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <div class="col mb-5">
                  <div class="card h-100">
                    <!-- Product image-->
                     <img src="images/12.png" class="card-img-top" id="card-img-top-h" height="257"  >
                    <!-- Product details-->
                    <div class="card-body p-4">
                      <div class="text-center">
                        <!-- Product name-->
                        <div class="fw-bolder">데이팩 3인분   
                          
                        </div>
                        <div class="fw-bolder1"> <div class="money">10,500원</div>
                                  <span style="color: #000099; font-weight: bolder;">7,500원</span> </div>
                        <!-- Product price-->
                        
                      </div>
                    </div>
                    
                  </div>
        </div>
                <div class="col mb-5">
                  <div class="card h-100">
                    
                    <!-- Product image-->
                    <img src="images/43.png" class="card-img-top" id="card-img-top-h" height="257"  >
                    <!-- Product details-->
                    <div class="card-body p-4">
                      <div class="text-center">
                        <!-- Product name-->
                        <h5 class="fw-bolder">데이팩 3인분</h5>
                        <!-- Product price-->
                        <div class="fw-bolder1"><div class="money">10,500원</div>
                                  <span style="color: #000099; font-weight: bolder;">7,500원</span> </div>
                      </div>
                    </div>
                    
                  </div>
        </div>
				   <div class="col mb-5">
                  <div class="card h-100">
                    
                    <!-- Product image-->
                     <img src="images/53.png" class="card-img-top" id="card-img-top-h" height="257"  >
                    <!-- Product details-->
                    <div class="card-body p-4">
                      <div class="text-center">
                        <!-- Product name-->
                        <h5 class="fw-bolder">데이팩 3인분</h5>
                        <!-- Product price-->
                        <div class="fw-bolder1"><div class="money">10,500원</div>
                        <span style="color: #000099; font-weight: bolder;">7,500원</span> </div>
                      </div>
                    </div>
                    
                    </div>
                  </div>
				   <div class="col mb-5">
                  <div class="card h-100">
                    
                    <!-- Product image-->
                    <img src="images/543.png" class="card-img-top" id="card-img-top-h" height="257"  >
                    <!-- Product details-->
                    <div class="card-body p-4">
                      <div class="text-center">
                        <!-- Product name-->
                        <h5 class="fw-bolder">데이팩 3인분</h5>
                        <!-- Product price-->
                        <div class="fw-bolder1"><div class="money">10,500원</div>
                        <span style="color: #000099; font-weight: bolder;">7,500원</span> </div>
                      </div>
                    </div>
                    
                    </div>
                  </div>
				   <div class="col mb-5">
                  <div class="card h-100">
                    
                    <!-- Product image-->
                    <img src="images/12.png" class="card-img-top" id="card-img-top-h" height="257"  >
                    <!-- Product details-->
                    <div class="card-body p-4">
                      <div class="text-center">
                        <!-- Product name-->
                        <h5 class="fw-bolder">데이팩 3인분</h5>
                        <!-- Product price-->
                        <div class="fw-bolder1"><div class="money">10,500원</div>
                        <span style="color: #000099; font-weight: bolder;">7,500원</span>  </div>
                      </div>
                    </div>
                    
                    </div>
                  </div>
				   <div class="col mb-5">
                  <div class="card h-100">
                    
                    <!-- Product image-->
                    <img src="images/53.png" class="card-img-top" id="card-img-top-h" height="257"  >
				  
				    <!-- Product details-->
                    <div class="card-body p-4">
                      <div class="text-center">
                        <!-- Product name-->
                        <h5 class="fw-bolder">데이팩 3인분</h5>
                        <!-- Product price-->
                        <div class="fw-bolder1"><div class="money">10,500원</div>
                                  <span style="color: #000099; font-weight: bolder;">7,500원</span> 
                      </div>
					  </div>
                    </div>
                    
                    </div>
                  </div>
				  
          <div class="col mb-5">
                  <div class="card h-100">
                    
                    <!-- Product image-->
                   <img src="images/543.png" class="card-img-top" id="card-img-top-h" height="257"  >
                    <!-- Product details-->
                    <div class="card-body p-4">
                      <div class="text-center">
                        <!-- Product name-->
                        <h5 class="fw-bolder">데이팩 3인분</h5>
                        <!-- Product price-->
                        <div class="fw-bolder1"><div class="money">10,500원</div>
                        <span style="color: #000099; font-weight: bolder;">7,500원</span> </div>
                      </div>
                    </div>
                    
            </div>
        </div>
                <div class="col mb-5">
                  <div class="card h-100">
                    
                    <!-- Product image-->
                   <img src="images/43.png" class="card-img-top" id="card-img-top-h" height="257"  ></a>
                    <!-- Product details-->
                    <div class="card-body p-4">
                      <div class="text-center">
                        <!-- Product name-->
                        <h5 class="fw-bolder">데이팩 3인분</h5>
                        <!-- Product price-->
                        <div class="fw-bolder1"><div class="money">10,500원</div>
                        <span style="color: #000099; font-weight: bolder;">7,500원</span>  </div>
                      </div>
                    </div>
                    
                  </div>
        </div>
                
      </div>
            </div>
          </div>
	   </section>
                  <!-- Section-->
	
<div class="wrapper">
   
  <p class="MD title">솔직한 리뷰</p>		 
		<div class="worry_text">영양제 실구매자들의 생생한 리뷰를 만나보세요</div>
	   <div class="container px-4 px-lg-5 mt-5">
	<div class="photobanner">
  <img class="first" src="images/11-01.png" alt="" />
  <img src="images/11-02.png" alt="" />
  <img src="images/11-03.png" alt="" />
  <img src="images/11-04.png" alt="" />
  <img src="images/11-05.png" alt="" />
<img src="images/11-02.png" alt="" />
  <img src="images/11-03.png" alt="" />
  <img src="images/11-04.png" alt="" />
  <img src="images/11-05.png" alt="" />
		<img src="images/11-01.png" alt="" />
</div>
	</div>
</div>

				
    <!-- Footer-->
       <footer>
		    
    <div class="footer_container">
      <div class="footer_text">
        <p class="m-0 text-center text-white">WAY<br> 회사소개 이용약관 개인정보취급처리방침 광고문의 관리자로그인<br><br>
          대표 : 정정정 | 이메일 : cs@way.com | 문의전화 : 02-0000-0000 <br>사업자등록번호 : 200-00-00000 통신판매업신고 : 2022-서울강남-00000 <br>주소 : 서울 강남구 XX동 XX로 11-77 Copyright © <br><br>way. All Rights Reserved.</p>
		 
      </div>
    </div>
				
    </footer>
</form>
		  <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<script src="button.js"></script>
<!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        scrollbar: {
          el: ".swiper-scrollbar",
          hide: true,
        },
		  
      });
		
		
    </script>
		  
</body>
	</html>