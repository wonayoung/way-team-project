<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
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
	
			<body style="overflow-x:hidden; overflow-y:auto;">
        <!-- Navigation-->
<div class="container1 px-4 px-lg-5">

					 <div class="userlogin" href="logout.jsp"><a href="logout.jsp">로그아웃</a></div>
		 <div class="service" href="#">고객센터</div>
			</div>
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
      <li><a href="viewProductAll.jsp">상품</a>
		<ul><li><a href="viewProductBest.jsp">Best</li>
		  <li><a href="viewProductAll.jsp">전체상품</a></li>
				<li><a href="viewProductByTarget.jsp">섭취대상별</a></li>
			<li><a href="viewProductByNutri.jsp">성분별</a></li>
		</li></ul>
	      <li><a href="nutriGraph.jsp">권장량 계산</a></li>
      <li><a href="#">이벤트</a></li>
    </ul>
  </nav>
					 
				
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

				  <header class=" py-5">
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("sid");
	
	String ordDate = new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new java.util.Date());

	//java.util.Date oDate = new java.util.Date();
	//String ordDate = oDate.toLocaleString();

	String[] dateArray = ordDate.split(" ");
	String date = dateArray[0];
	//for(int i=0; i<=2; i++){
	//	date = date+dateArray[i];
	//}
	
	//date = date.replaceAll("[.]", "");

	String dateNo = date.replaceAll("-", "");

	String ordNo = dateNo;
	int d = 0;
	for (int i = 0; i < 5; i++){
		Random r = new Random();
		d = r.nextInt(9);
		ordNo = ordNo + Integer.toString(d);
	}
	

	
	String ordReceiver = request.getParameter("name");
	String ordRcvPost = request.getParameter("postcode");
	String addr = request.getParameter("addr");
	String detail = request.getParameter("detail");
	String extra = request.getParameter("extra");
	String ordRcvAddr = addr+" "+detail+extra;
	String ordRcvPhone = request.getParameter("phone");
	String ordPay = request.getParameter("pay");//적립금 결제 금액을 제외한 결제 금액
	String ordReque = request.getParameter("request");
	String ordBank = request.getParameter("bank");
	String ordCardNo = request.getParameter("cardNo");
	String ordCardPw = request.getParameter("cardPw");

	String payment = request.getParameter("payment");

	String DB_URL="jdbc:mysql://localhost:3306/way";
    String DB_ID="multi"; 
    String DB_PASSWORD="abcd";
 	 
	Class.forName("org.gjt.mm.mysql.Driver");  
 	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String sql1 = "Insert Into orderinfo values (?,?,?,?,?,?,?,?,?,?,?,?,?)";

	PreparedStatement pstmt1 = con.prepareStatement(sql1);
	pstmt1.setString(1,ordNo);
	pstmt1.setString(2,id);
	pstmt1.setString(3,ordDate);
	pstmt1.setString(4,ordReceiver);
	pstmt1.setString(5,ordRcvPost);
	pstmt1.setString(6,ordRcvAddr);
	pstmt1.setString(7,ordRcvPhone);
	pstmt1.setString(8,ordPay);
	pstmt1.setString(9,ordReque);
	pstmt1.setString(10,ordBank);
	pstmt1.setString(11,ordCardNo);
	pstmt1.setString(12,ordCardPw);
	pstmt1.setString(13,"상품준비");

	pstmt1.executeUpdate();

%>
          
			
					<div class="container px-4 px-lg-5">
							<div class="footer_title02">주문완료</div>
						
<div class="footer_title03"><span style="color: #707070"> 장바구니>주문결제><span style="color: #000099">주문완료</span></span></div>
					 <div class="cart_list">
					  					<div class="px-4 mt-5">
						
			<div class="container px-4 px-lg-5">
<div class="order_title2">주문이 완료되었습니다
<br>
<span class="order_number01">주문번호 : <%=ordNo%></span></div></div>
        <header class=" py-6">
						</header>
  
                    <span class="checkboxfont1">주문내역</span><p>



<table border=0 class="table_border" style="font-size:10pt;font-family:맑은 고딕">
<tr>       
   <td  width = "20%" height="30" align="center"  class="order_con05"><p align="center"><font size="2" color="#ECFAE4"><strong>상품</strong></font></td>       
   <td width = "20%" height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>상품명</strong></font></td>       
   <td  width = "20%" height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>상품단가(원)</strong></font></td>       
   <td  width = "20%"height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>주문수량(개)</strong></font></td>     
   <td   width = "10%" height="30" align="center" class="order_con05"><p><font size="2" color="#ECFAE4"><strong>주문액(원)</strong></font></td>  
    <td   width = "10%" height="30" align="center" class="order_con05"><p><font size="2" color="red"><b>비 고</b></font></td>
 </tr> 		
 <%
		String sql2 = "select prdNo, ctQty from cart where memId = ?";
		PreparedStatement pstmt2 = con.prepareStatement(sql2);
		pstmt2.setString(1, id);		

		ResultSet rs2 = pstmt2.executeQuery(); 

		int total=0;

		while(rs2.next()) 
  		{			                   
			String prdNo = rs2.getString("prdNo");	
    		int ctQty = rs2.getInt("ctQty");	         

    		String sql3 = "select prdName, salePrice, salesRate from product where prdNo = ?";
	    	PreparedStatement pstmt3 = con.prepareStatement(sql3);
		    pstmt3.setString(1, prdNo);
		    
			ResultSet rs3 = pstmt3.executeQuery(); 
			rs3.next();

			String prdName = rs3.getString("prdName");	  
			int salePrice = rs3.getInt("salePrice");
			int salesRate = rs3.getInt("salesRate");
			int amount=0;

			if((ctQty%2)==0){
				amount=(ctQty/6)*(int)(salePrice*6*0.90)+((ctQty%6)/4)*(int)(salePrice*4*0.93)+(((ctQty%6)%4)/2)*(int)(salePrice*2*0.95);
			}
			else{
				amount=(ctQty/6)*(int)(salePrice*6*0.90)+((ctQty%6)/4)*(int)(salePrice*4*0.93)+(((ctQty%6)%4)/2)*(int)(salePrice*2*0.95)+salePrice;
			}
    	    
			total=total+amount;

			if(total<50000)
				total=total+3000;

			salesRate += ctQty;
			

			String sql4 = "Insert Into orderProduct Values (?,?,?,?)";
			PreparedStatement pstmt4 = con.prepareStatement(sql4);
			
			pstmt4.setString(1,id);
			pstmt4.setString(2,ordNo);
			pstmt4.setString(3,prdNo);
			pstmt4.setInt(4,ctQty);

			pstmt4.executeUpdate();

			String sql8 = "UPDATE product SET salesRate=? WHERE prdNo=?";
			PreparedStatement pstmt8 = con.prepareStatement(sql8);
			pstmt8.setInt(1,salesRate);
			pstmt8.setString(2,prdNo);

			pstmt8.executeUpdate();
%>
 <tr>      
    <td  height="200" align="center"><img src="prdImages\<%=prdNo%>_main.jpg" class="card-img-top" /></td>     
	<td  height="200"align="center"><font size="2"><%=prdName%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=salePrice%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=ctQty%></font></td>
    <td  height="200"align="right"><font size="2"><%=amount%> 원</font></td>    
    <td  height="200"align="center"><b>주문 완료</b></td> 	
  </tr>   
<%
		}

	String sql5 = "Delete from cart where memId=?";
	PreparedStatement pstmt5 = con.prepareStatement(sql5);
	pstmt5.setString(1,id);
	
	pstmt5.executeUpdate();

	int used = Integer.parseInt(request.getParameter("used"));
	int reserves = Integer.parseInt(request.getParameter("reserves"));
	//적립,사용일
	//String[] dateArr = ordDate.split(" ");
	//String reservesDate = "";
	
	//사용된 적립금에 대한 정보 저장
	if(used!=0)
	{
		String sql6 = "INSERT INTO reserves (memId, reserves, date) VALUES (?,?,?)";
		PreparedStatement pstmt6 = con.prepareStatement(sql6);
		pstmt6.setString(1,id);
		pstmt6.setInt(2,-used);
		pstmt6.setString(3, date);

		pstmt6.executeUpdate();
	}
	//적립된 적립금에 대한 정보 저장
	if(reserves!=0)
	{
		String sql7 = "INSERT INTO reserves (memId, reserves, date) VALUES (?,?,?)";
		PreparedStatement pstmt7 = con.prepareStatement(sql7);
		pstmt7.setString(1,id);
		pstmt7.setInt(2,reserves);
		pstmt7.setString(3, date);

		pstmt7.executeUpdate();
	}


%>
  <tr>
	<td colspan = 4 align=center class="order_total"><b>전체 주문총액</b></td>
	<td class="order_total" height="30" align=right><font size="2" color="red"><b><%=total%> 원</b></font></td>
	<td  class="order_total" align=center>(선택물품 총합)</td>
  </tr>
  <tr>
	<td colspan = 5 align=center class="order_total"><b>총 적립금</b></td>
	<td class="order_total" height="30" align=right><font size="2" color="red"><b><%=reserves%> 원</b></font></td>
  </tr>

 </table>   

                </div>
						
				
               
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
  <div class="inputtitle1"><%=ordReceiver%></div>
   <div class="inputtitle1"><%=ordRcvAddr%></div>
                                     
  <div class="inputtitle1"><%=ordRcvPhone%></div>
                                     
  <div class="inputtitle1"><%=ordReque%></div>
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
  <div class="inputtitle1"><%=payment%></div>
   <div class="inputtitle1"><%=ordBank%></div>
                                     
  <div class="inputtitle1"><%=ordCardNo%></div>
                                     
  <div class="inputtitle1"><%=ordCardPw%></div>
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
			<center>
        <div class="check_01">  
				     <button type="button" class="btn_order_choice_buy1" onclick="javascript:location.href='index.jsp'">홈으로</button></center>
				
<header class=" py-5">
	</header>
<!-- Footer-->
       <footer>
		    
    <div class="footer_container">
      <div class="footer_text">
        <p class="m-0 text-center text-white">WAY<br> <a href="company.html">회사소개</a> <a href="terms.html">이용약관</a> <a href="privacy.html">개인정보취급처리방침</a> <a href="advertisement.html">광고문의</a> <a href="managerLogin.html">관리자로그인</a><br><br>
          대표 : 정정정 | 이메일 : cs@way.com | 문의전화 : 02-0000-0000 <br>사업자등록번호 : 200-00-00000 통신판매업신고 : 2022-서울강남-00000 <br>주소 : 서울 강남구 XX동 XX로 11-77 Copyright © <br><br>way. All Rights Reserved.</p>
		 
      </div>
    </div>
				
    </footer>
		
		  <script src="button.js"></script>
</body>
	</html>