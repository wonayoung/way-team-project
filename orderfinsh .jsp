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
    </head>
<body onLoad="MM_preloadImages('images/next.png')">
	 <form>
			<body style="overflow-x:hidden; overflow-y:auto;">
        <!-- Navigation-->
<div class="container1 px-4 px-lg-5">

  <div class="service"><a href="login.jsp">로그인</a>&nbsp;&nbsp; <a href="signup.jsp"> 회원가입</a>&nbsp; &nbsp; 고객센터</div>
</div>
       <nav class="navbar navbar-expand-lg navbar-light">
			
          <div class="container px-4 px-lg-5">
				
			  <div class="navbar-brand"  onclick='window.location.href = "index.html"'></div>
                 <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><div class="hamburger">
	<div class="_layer -top"></div>
	<div class="_layer -mid"></div>
	<div class="_layer -bottom"></div>
</div>
<nav class="menuppal">
    <ul>
      <li><a href="#">건강고민</a></li>
      <li><a href="#">상품</a>
		<ul><li><a href="#">Best</li>
		  <li><a href="#">전체상품</a></li>
				<li><a href="#">섭취대상별</a></li>
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
          <a class="nav-link"  href="#">건강고민</a>
                      </div>
                    
					  <div class="dropdown">
                        <a class="nav-link"  href="#" >상품</a>
						<div class="dropdown-content">
        <a href="#">Best</a>
        <a href="#">전체상품</a>
							  <a href="signup.html">섭취대상별</a>
							 <a href="login.html">성분별</a>
      </div>
                      </div>    
                      <a class="nav-link" href="#">권장량 계산</a>
					
                      <a class="nav-link "  href="#" >이벤트</a>
					
                           
                    </ul>
                  <div class="d-flex">
					  
                    <input type="search" class="btn img_bar" placeholder="검색어를 입력하세요" >
                 
                 </div>
				  <div class="icon_user"></div>
					 <div class="icon_cart"></div>
            </div>
         </div>
       </nav>

				  <header class=" py-5">
          
			
					<div class="container px-4 px-lg-5">
							<div class="footer_title02">주문완료</div>
						
<div class="footer_title03"><span style="color: #707070"> 장바구니>주문결제><span style="color: #000099">주문완료</span></span></div>
					 <div class="cart_list">
					  					<div class="px-4 mt-5">
						
			<div class="container px-4 px-lg-5">
<div class="order_title2">주문이 완료되었습니다
<br>
<span class="order_number01">주문번호 : 00000000</span></div></div>
        <header class=" py-6">
						</header>
  
                    <span class="checkboxfont1">주문내역</span><p>


<!--  (74행~269행):   order.jsp의 48행~235행과 거의 95%이상 유사한 코드를 사용하고 있음  -->
<!--  103행에서 cart 테이블이 아니라, tempcart 테이블을 사용하고 있음에 유의할 것!              -->
<table border=0 class="table_border" style="font-size:10pt;font-family:맑은 고딕">
<tr>       
   <td  width = "20%" height="30" align="center"  class="order_con05"><p align="center"><font size="2" color="#ECFAE4"><strong>상품번호</strong></font></td>       
   <td width = "20%" height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>상품명</strong></font></td>       
   <td  width = "20%" height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>상품단가(원)</strong></font></td>       
   <td  width = "20%"height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>주문수량(개)</strong></font></td>     
   <td   width = "10%" height="30" align="center" class="order_con05"><p><font size="2" color="#ECFAE4"><strong>주문액(원)</strong></font></td>  
    <td   width = "10%" height="30" align="center" class="order_con05"><p><font size="2" color="red"><b>비 고</b></font></td>
 </tr> 		
 <tr>       
    <td  height="200" align="center"><font size="2"><%=prdNo%></font></td>     
	<td   height="200"align="center"><font size="2"><%=prdName%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=prdPrice%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=ctQty%></font></td>
    <td  height="200"align="right"><font size="2"><%=amount%> 원</font></td>  
    <td  height="200"align="center"><a href="deleteCart.jsp?prdNo=<%=prdNo%>"><b>주문 완료</b></a></td> 	
  </tr>   

  <tr>
	<td colspan = 4 align=center class="order_total"><b>전체 주문총액</b></td>
	<td class="order_total" height="30" align=right><font size="2" color="red"><b><%=total%> 원</b></font></td>
	<td  class="order_total" align=center>(선택물품 총합)</td>
  </tr>
 </table>   

                </div>
						
   </form>
				
               
						<header class=" py-5">
						</header>
          <!-- //order_cart_tit -->

                    <div class="order_table_type">
                        <table>
                      
                            <thead>
                            <tr>
                                
                              <th colspan="6" class="checkboxfont1">배송정보 </th>  
                               
                              
                              <th>
                                 
                            </thead>
								 
                            <tbody class="td_padding1">

                            <tr>
                                
                                <td colspan="6"  class="td_left">
                                       
								 <div class="signUp8"><br>
                                   <div class="left_title1">
  <div class="inputtitle">수령인</div>
                                     <div class="inputtitle">주소</div>
                                     
  <div class="inputtitle">연락처 </div>
                                     
  <div class="inputtitle">요청사항 </div>
                                   </div>
									 
									     <div class="right_title1">
  <div class="inputtitle1">김이름</div>
   <div class="inputtitle1">충남 천안시 서북구 성환읍 대학로 91</div>
                                     
  <div class="inputtitle1">010-0000-0000 </div>
                                     
  <div class="inputtitle1">부재시 무인택배함에 넣어주세요. </div>
                                   </div>
<br>
									 

				</div><td> </td></td><td> </td>
                            </tr>

                            </tbody>


                        </table>
                    </div>

					
          <!-- //order_cart_tit -->

                    <div class="order_table_type">
                        <table>
                      
                            <thead>
                            <tr>
                                
                                  <th colspan="6" class="checkboxfont1">결제상세 </th>  
                               
                              
                              <th>
                                 
                            </thead>
								 
                            <tbody class="td_padding1">

                            <tr>
                                
                                <td colspan="6"  class="td_left">
  
                                       
								 <div class="signUp8"><br>	
									  <div class="left_title1">
					     <div class="inputtitle">결제수단</div>
		
                <div class="inputtitle" >은행명</div>
								

<div class="inputtitle" >카드번호</div>
<div class="inputtitle">카드 비밀번호</div>

				</div>	<div class="right_title1">
  <div class="inputtitle1">신용카드</div>
   <div class="inputtitle1">국민은행</div>
                                     
  <div class="inputtitle1">0000-0000-0000-0000 </div>
                                     
  <div class="inputtitle1">1234 </div>
                                   </div>
                                       
                                   </div>
							  </td>
                                            
<td>
                                            <!-- //icon_pick_list -->

                                       
            
                                        
         </td>
                              
								
							
								
                                    
                             
                            </tr>

                            </tbody>


                        </table>
                    </div>

               
<div class="price_sum_list">
                        <div>
                         
                          
                          
                       		<header class=" py-6">		</header>
                    </div>
                  </div>
   
							 </div>	
        
                      
                    </div>
                      </div>
                    
		<header class=" py-5">
						</header>
				<!--확인정보와 주문하기 버튼을 추가 기재하였습니다-->
			<center>
        <div class="check_01">  
				     <button type="button" class="btn_order_choice_buy1" onclick="">홈으로</button></center>
				
<header class=" py-5">
	</header>
<!-- Footer-->
         <footer>
			 
		    
    <div class="footer_container">
      <div class="footer_text">
        <p class="m-0 text-center text-white">WAY<br> 회사소개 이용약관 개인정보취급처리방침 광고문의 관리자로그인<br><br>
          대표 : 정정정 | 이메일 : cs@way.com | 문의전화 : 02-0000-0000 <br>사업자등록번호 : 200-00-00000 통신판매업신고 : 2022-서울강남-00000 <br>주소 : 서울 강남구 XX동 XX로 11-77 Copyright © <br><br>way. All Rights Reserved.</p>
		 
      </div>
    </div>
				
    </footer>
		
		  <script src="button.js"></script>
</body>
	</html>