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
<body>
	 <form>
			<body style="overflow-x:hidden; overflow-y:auto;">
        <!-- Navigation-->
<div class="container1 px-4 px-lg-5">

  <div class="service"><a href="login.jsp">로그인</a>&nbsp;&nbsp; <a href="signup.jsp"> 회원가입</a>&nbsp; &nbsp; 고객센터</div>
</div>
        <nav class="navbar navbar-expand-lg navbar-light">
			
          <div class="container px-4 px-lg-5">
				
                <div class="navbar-brand"></div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
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
							<div class="footer_title02">주문결제</div>
						<!--글자 색상 추가하였습니다-->
<div class="footer_title03"><span style="color: #707070"> 장바구니<span style="color: #000099">>주문결제</span>>주문완료</span></div>
					 <div class="cart_list">
					  					<div class="px-4 mt-5">
						<!--jsp내용
			
<%
	String myid = (String)session.getAttribute("sid");  
	// 로그인 성공시 부여한 "sid" 속성의 속성값은 "특정회원의 아이디"를 나타내며, 
	// 이 속성값이 null인지 아닌지로 로그인 여부를 확인함. (로그인이 안된 경우, 이 값은 null값을 가짐)
	// login_ok.jsp의 초반부 코드 확인 요망!  ==> session.setAttribute("sid", id); 부분 확인요망!

if (myid == null) 
{
%>
<center>
<br><br><br> 
<font style="font-size:10pt;font-family:맑은 고딕">
		상품 주문을 위해서는 로그인이 필요합니다! <br><br>	<a href="login.jsp" ><img src="./images/login.gif" border=0></a>
</font>
</center>

<%
}
else
{
 try { // (1)  (34행~151행):  tempcart 테이블에 즉시구매할 상품레코드 저장후, tempcart 내역을 그대로 보여주기 

 	 String DB_URL="jdbc:mysql://localhost:3306/project";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	 String ctNo = session.getId();   // 세션 번호를 장바구니 번호로서 이용하기 위해 ctNo에 저장

    //   46~50행 부분:   만일, "즉시구매하기" 클릭 후, 주문을 완료하지 않고 중간에 주문을 취소시킬 경우엔, 
	//   주문하려다 취소시킨 상품내역이 그대로 tempcart 테이블에 남아있게 된다. 따라서, 이러한 문제점을 
	//   방지하기 위하여, "즉시구매하기"를 수행하기 직전에 명시적으로 tempcart 테이블을 비워주도록 처리함.
	 String jsql5 = "delete from tempcart where ctNo=?";    
	 PreparedStatement pstmt5 = con.prepareStatement(jsql5);
	 pstmt5.setString(1, ctNo);
	
     pstmt5.executeUpdate();
    
     //   54행부터, 실제로 "즉시구매하기"와 관련된 코드부분이 시작됨.
     //  상세정보페이지(폼)으로부터 "즉시구매"하고자 하는 상품번호와 주문수량을 넘겨받는다.
	 String pNo = request.getParameter("prdNo");   // 상품번호
	 int Qty = Integer.parseInt(request.getParameter("qty"));   //  주문수량

      // tempcart 테이블에 "즉시구매"할  상품레코드를 저장시킴
	 String jsql = "insert into tempcart (ctNo, prdNo, ctQty) values (?,?,?)";  
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1,ctNo);
	 pstmt.setString(2,pNo);
	 pstmt.setInt(3,Qty);	

	 pstmt.executeUpdate();

%>
-->
<br><br>   
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

<!--jsp

<%

		String jsql2 = "select prdNo, ctQty from tempcart where ctNo = ?";   //  tempcart 테이블을 사용함에 유의!
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
		pstmt2.setString(1, ctNo);		

		ResultSet rs2 = pstmt2.executeQuery(); 
		
		int total=0;   //  130행 참조
         
	//	while(rs2.next()) 
  	//	{			                   

		rs2.next();    //  즉시구매하기의 경우, 즉시구매할 상품레코드만 가리켜주면 됨(while문은 불필요함!)

		String prdNo = rs2.getString("prdNo");	    //  tempcart 테이블로부터 상품번호 추출
   		int ctQty = rs2.getInt("ctQty");	                    //  tempcart 테이블로부터 주문수량 추출 

   		String jsql3 = "select prdName, prdPrice from goods where prdNo = ?";
    	PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	    pstmt3.setString(1, prdNo);

	    ResultSet rs3 = pstmt3.executeQuery(); 
		rs3.next();

		String	prdName =  rs3.getString("prdName");	  //  goods 테이블로부터 상품명 추출
		int prdPrice =  rs3.getInt("prdPrice");                 //  goods 테이블로부터 상품단가 추출
				
   		int amount = prdPrice *ctQty;     //  주문액 계산
		total = total + amount;                  //  전체 주문총액 계산
%>

-->
 <tr>       
    <td  height="200" align="center"><font size="2"><%=prdNo%></font></td>     
	<td   height="200"align="center"><font size="2"><%=prdName%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=prdPrice%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=ctQty%></font></td>
    <td  height="200"align="right"><font size="2"><%=amount%> 원</font></td>  
    <td  height="200"align="center"><a href="deleteCart.jsp?prdNo=<%=prdNo%>"><b>즉시 구매</b></a></td> 	
  </tr>   

<!--jsp
<%
	   //      }  // while문의 끝
 %>
 -->
  <tr>
	<td colspan = 4 align=center class="order_total"><b>전체 주문총액</b></td>
	<td class="order_total" height="30" align=right><font size="2" color="red"><b><%=total%> 원</b></font></td>
	<td  class="order_total" align=center>(선택물품 총합)</td>
  </tr>
 </table>   

<!--jsp
<%
	// (2)주문자 정보 출력 - 회원 테이블 정보 출력
	//String myid = (String)session.getAttribute("sid");  // 로그인했었던 주문자 정보(즉, 아이디)를 받아옮

	String jsql4 = "select memName, memTel from member where memId = ?";
	PreparedStatement pstmt4 = con.prepareStatement(jsql4);
	pstmt4.setString(1,myid);

	ResultSet rs4 = pstmt4.executeQuery();
	rs4.next();
	String  name = rs4.getString("memName");
	String  tel = rs4.getString("memTel");
%>



<%
   }  catch(Exception e)  {
        out.println(e);
 } 

}   // if-else문의 끝
%>
         
         -->
                    <!-- //order_cart_tit -->

                   

                </div>
						
   </form>
				
               

						<header class=" py-5">
						</header>
          <!-- //order_cart_tit -->

                    <div class="order_table_type">
                        <table>
                      
                            <thead>
                            <tr>
                                
                              <th colspan="6" class="checkboxfont1">배송정보  <input type="checkbox"><span class="same">회원 정보와 동일</span></th>  
                               
                              
                              <th>
                                 
                            </thead>
								 
                            <tbody class="td_padding1">

                            <tr>
                                
                                <td colspan="6"  class="td_left">
  <!--수령인 placeholder와 class를 수정하였습니다-->
                                       
								 <div class="signUp8"><br>				
					    <div class="inputtitle">수령인*</div> <input name="recipient" type="text"  class="inputtext" placeholder="수령인 이름을 입력하세요">
			
                <div class="inputtitle">주소*</div>
									  <!-- placeholde 추가하였습니다-->
<input type="address" name="pw" class="inputtext"  placeholder="주소를 입력해주세요"><br>
<div class="inputtitle">연락처* </div>
<input type="text" name="phone" class="inputtext"  placeholder="연락처를 입력해주세요"><br>
									  <!--요청사항*를 빼고 placeholde 추가하였습니다-->
<div class="inputtitle">요청사항 </div>
<input type="text" name="request" class="inputtext" placeholder="요청사항을 입력해주세요"><br>

				</div>
                                       
                                  <td> </td>  
							  </td>
                                        
<td>
                                           

                                       
            
                                        
         </td>
                              
								
							
								
                                    
                             
                            </tr>

                            </tbody>


                        </table>
                    </div>

					
          <!-- //order_cart_tit -->

                    <div class="order_table_type">
                        <table>
                      
                            <thead>
                            <tr>
                                
                                  <th colspan="6" class="checkboxfont1">결제 </th>  
                               
                              
                              <th>
                                 
                            </thead>
								 
                            <tbody class="td_padding">

                            <tr>
                                
                                <td colspan="6"  class="td_left">
  
                                       
								 <div class="signUp8"><br>				
					     <div class="inputtitle">결제수단</div>
<input type="radio" name="pay" value="신용카드"무 >
<span style="color: #707070">신용카드</span>
<input type="radio" name="pay" value="무통장입금" >
<span style="color: #707070">무통장입금</span>
<br>
				
                <div class="inputtitle" >은행명</div>
									 <select class="inputtext">
									 <option>국민은행</option>
									  <option>우리은행 </option>
									  <option>NH농협은행 </option></select>

<div class="inputtitle" >카드번호</div>
									 <!--placeholder 추가했습니다-->
<input name="card" type="password" class="inputtext" placeholder="카드 번호를 입력해주세요"><br>
<div class="inputtitle">카드 비밀번호</div>
									  <!--placeholder 추가했습니다-->
<input name="ckcard" type="text" class="inputtext" placeholder="카드 비밀번호를 입력해주세요"><br>

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
                         
                          
                            <span class="font_color_b">최종 결제 금액
                            <span style="color: #000099">0원</span></span>
                       		<header class=" py-5">		</header>
                    </div>
                  </div>
   
							 </div>	
        
                      
                    </div>
                      </div>
                    
		<header class=" py-5">
						</header>
				<!--확인정보와 주문하기 버튼을 추가 기재하였습니다-->
			<center>
        <div class="check_01">  <input type="checkbox">결제정보를 확인하였으며, 구매진행에 동의합니다.</div>  
				     <button type="button" class="btn_order_choice_buy1" onclick="">주문하기</button></center>
				
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
		
		  
</body>
	</html>