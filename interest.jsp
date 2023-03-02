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
    <!-- Link Swiper's CSS -->
    
        <title></title>
		
        <!-- Favicon-->
        
        <link href="css/styles.css" rel="stylesheet" />
		<link href="css/mypagepoint.css" rel="stylesheet" />
    </head>

<body onLoad="MM_preloadImages('images/next.png')" style="overflow-x:hidden; overflow-y:auto;">
<%
	String id = (String)session.getAttribute("sid");
	
	if(id!=null)
	{
%>
        <!-- Navigation-->
<div class="container1 px-4 px-lg-5">
					 <div class="userlogin" href="logout.jsp"><a href="logout.jsp">로그아웃</a></div>
		 <div class="service" href="#">고객센터</div>
			</div>
<%
	}
	else
	{
%>
	        <!-- Navigation-->
<div class="container1 px-4 px-lg-5">

  <div class="service"><a href="login.html">로그인</a>&nbsp;&nbsp; <a href="signUp.jsp"> 회원가입</a>&nbsp; &nbsp; 고객센터</div>
</div>
<%
	}
%>
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
      <li><a href="viewProduct.jsp">상품</a>
		<ul><li><a href="viewProduct.jsp">Best</li>
		  <li><a href="viewProduct.jsp">전체상품</a></li>
				<li><a href="viewProduct.jsp">섭취대상별</a></li>
			<li><a href="#">성분별</a></li>
		</li></ul>
	      <li><a href="#">권장량 계산</a></li>
      <li><a href="#">이벤트</a></li>
    </ul>
  </nav>
					 
				
			  </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					  <div class="dropdown">
          <a class="nav-link"  href="healthconcerns.html">건강고민</a>
                      </div>
                    
					  <div class="dropdown">
                        <a class="nav-link"  href="viewProduct.jsp" >상품</a>
						<div class="dropdown-content">
        <a href="viewProduct.jsp">Best</a>
        <a href="viewProduct.jsp">전체상품</a>
							  <a href="viewProduct.jsp">섭취대상별</a>
							 <a href="#">성분별</a>
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
				  <div class="icon_user"></div>
					  <a class="icon_cart" href="showCart.jsp"></a>
            </div>
         </div>
       </nav>
				  <header class=" py-5">
          
			
					<div class="container px-4 px-lg-5">
	
<div class="container">
    <div class="menu_01">
<div class="menu_target">MY PAGE</div>
				
<br>
<div class="left_menu_bar"><a>주문/배송</a> <br>
				<a>회원 정보</a>
				<br>
				<a>관심상품</a>
				<br>
				<a>적립금</a>
				<br>
				<a>문의현황</a></div>
    </div>
       </div>
		
						
		

               
					<div class="left_username">user님 반갑습니다.</div>
<hr class="hr_username"><p class="blank"></p>
					<span class="checkboxfont1">관심상품</span><p></p>
					
                     <div class="container px-4  mt-5">
		
<div class="row gx-4  row-cols-1 row-cols-md-2 row-cols-xl-3 justify-content-center">
<div class="col mb-5">
                    <div class="card h-100">
						 <form>
					
					
                            <!-- Product image-->
                            <img src="images/12.png" height="289" class="card-img-top" />

                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <div class="fw-bolder">데이팩 3인분   
									
									</div>
								  <div class="fw-bolder1">
								    <div class="money">10,500원</div>
                                  <span style="color: #000099; font-weight: bolder;">7,500원</span></div>
                                    <!-- Product price-->
                                    
                              </div>
                          </div>
                            
        </div>
      </div>
	 <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="images/12.png" height="289" class="card-img-top" />

                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <div class="fw-bolder">데이팩 3인분   
									
									</div>
								  <div class="fw-bolder1">
								    <div class="money">10,500원</div>
                                  <span style="color: #000099; font-weight: bolder;">7,500원</span></div>
                                    <!-- Product price-->
                                    
                              </div>
                          </div>
                            
            </div>
      </div>
	 <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="images/12.png" height="289" class="card-img-top" />

                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <div class="fw-bolder">데이팩 3인분   
									
									</div>
								  <div class="fw-bolder1">
								    <div class="money">10,500원</div>
                                  <span style="color: #000099; font-weight: bolder;">7,500원</span></div>
                                    <!-- Product price-->
                                    
                              </div>
                          </div>
                            
            </div>
      </div>
	 <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="images/12.png" height="289" class="card-img-top" />

                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <div class="fw-bolder">데이팩 3인분   
									
									</div>
								  <div class="fw-bolder1">
								    <div class="money">10,500원</div>
                                  <span style="color: #000099; font-weight: bolder;">7,500원</span></div>
                                    <!-- Product price-->
                                    
                              </div>
                          </div>
                            
            </div>
      </div>
	 <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="images/12.png" height="289" class="card-img-top" />

                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <div class="fw-bolder">데이팩 3인분   
									
									</div>
								  <div class="fw-bolder1">
								    <div class="money">10,500원</div>
                                  <span style="color: #000099; font-weight: bolder;">7,500원</span></div>
                                    <!-- Product price-->
                                    
                              </div>
                          </div>
                            
            </div>
      </div>
	 <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img src="images/12.png" height="289" class="card-img-top" />

                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <div class="fw-bolder">데이팩 3인분   
									
									</div>
								  <div class="fw-bolder1">
								    <div class="money">10,500원</div>
                                  <span style="color: #000099; font-weight: bolder;">7,500원</span></div>
                                    <!-- Product price-->
                                    
                              </div>
                          </div>
                            
            </div>
      </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            
                          <!-- Product image-->
                               <img src="images/43.png" class="card-img-top"   height="289"  >
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">데이팩 3인분</h5>
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
                               <img src="images/53.png" class="card-img-top" height="289"   >
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">데이팩 3인분</h5>
                                    <!-- Product price-->
                                    <div class="fw-bolder1"><div class="money">10,500원</div>
   <span style="color:  #000099; font-weight: bolder;">7,500원</span> </div>
                                </div>
                          </div>
                           
                      </div>
                    </div>
                     <div class="col mb-5">
                        <div class="card h-100">
                            
                          <!-- Product image-->
                               <img src="images/543.png" class="card-img-top"  height="289"  >
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">데이팩 3인분</h5>
                                    <!-- Product price-->
                                    <div class="fw-bolder1"><div class="money">10,500원</div>
   <span style="color: #000099; font-weight: bolder;">7,500원</span></div>
                                </div>
                          </div>
                           
                       </div>
                    </div>
               
      </div>
    </div>
		  <div class="container px-4 px-lg-5 mt-5">
<div class="num">< 1 > </div>
              </div>

    
</form>
											
                </div>
						
   </form>
				
               

					
         
                      </div>
					   </div>	
        
                      
                    </div>
                      </div>
                    </div>
	
	<header class=" py-5"></header>
				
  <!-- Footer-->
       <footer>
		    
    <div class="footer_container">
      <div class="footer_text">
        <p class="m-0 text-center text-white">WAY<br> 회사소개 이용약관 개인정보취급처리방침 광고문의 관리자로그인<br><br>
          대표 : 정정정 | 이메일 : cs@way.com | 문의전화 : 02-0000-0000 <br>사업자등록번호 : 200-00-00000 통신판매업신고 : 2022-서울강남-00000 <br>주소 : 서울 강남구 XX동 XX로 11-77 Copyright © <br><br>way. All Rights Reserved.</p>
		 
      </div>
    </div>
				
    </footer>

		
		  
</body>
	</html>