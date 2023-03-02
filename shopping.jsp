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
							<div class="footer_title02">장바구니</div>
						<!--글자 색상 추가하였습니다-->
<div class="footer_title03"> <span style="color: #000099">장바구니</span><span style="color: #707070">>주문결제>주문완료</span></div>
					 <div class="cart_list">
					  					<div class="px-4 mt-5">
											 
						
			
         
         
                    <!-- //order_cart_tit -->

                    

                
  
<!--jsp 수정하면 될것 같습니다
<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project";    // 접속 DB는 project
     String DB_ID=""; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String ctNo = session.getId();   //세션 번호를 장바구니 번호로서 이용하기 위해 ctNo에 저장


	// 장바구니에 물건을 담기 전후, mysql상에서 select * from cart;의 결과를 함께 확인/비교 해가면서
	// cart테이블에 남아있는 상품레코드정보와 장바구니번호(ctNo)를 함께 이해해 보도록 할 것!
	//  =>  홈페이지상에서 보여지는 장바구니 내역에 포함된 레코드들이, 실제로 cart테이블상에서는 
	//         무엇을 의미하고 있는지 곰곰히 생각해 볼 것! (중요!)
	String jsql = "select * from cart where ctNo = ?";
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, ctNo);

	ResultSet rs = pstmt.executeQuery();

	if(!rs.next())    // 조회 결과가 존재하지 않으면,  rs.next()는 false를 리턴함. 
	{                       //  따라서,  !rs.next()의 값은 true가 됨 
%>
		장바구니가 비었습니다.
<%
	}
	else
	{
%>
-->
<table border=0 class="table_border" style="font-size:10pt;font-family:맑은 고딕">
<tr>       
   <td  width = "20%" height="30" align="center"  class="order_con05"><p align="center"><font size="2" color="#ECFAE4"><strong>상품번호</strong></font></td>       
   <td width = "20%" height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>상품명</strong></font></td>       
   <td  width = "20%" height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>상품단가(원)</strong></font></td>       
   <td  width = "20%"height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>주문수량(개)</strong></font></td>     
   <td   width = "10%" height="30" align="center" class="order_con05"><p><font size="2" color="#ECFAE4"><strong>주문액(원)</strong></font></td>  
   <td   width = "10%" height="30" align="center" class="order_con05"><p><font size="2" color="red"><b>[상품삭제]</b></font></td>
 </tr> 		
<!--jsp 영역 입니<%


		String jsql2 = "select prdNo, ctQty from cart where ctNo = ?";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
		pstmt2.setString(1, ctNo);		

		ResultSet rs2 = pstmt2.executeQuery(); 

		int total=0;

		while(rs2.next()) 
  		{			                   
			String prdNo = rs2.getString("prdNo");	//  cart테이블로부터 상품번호 추출
    		int ctQty = rs2.getInt("ctQty");	                //  cart테이블로부터 주문수량 추출 

    		String jsql3 = "select prdName, prdPrice from goods where prdNo = ?";
	    	PreparedStatement pstmt3 = con.prepareStatement(jsql3);
		    pstmt3.setString(1, prdNo);
		    
			ResultSet rs3 = pstmt3.executeQuery(); 
			rs3.next();

			String	prdName =  rs3.getString("prdName");	  //  goods 테이블로부터 상품명 추출
			int prdPrice =  rs3.getInt("prdPrice");                 //  goods 테이블로부터 상품단가 추출
				
    		int amount = prdPrice * ctQty;    //  주문액 계산
			total = total + amount;                  //  전체 주문총액 계산
%>-->
	
 <tr>       
    <td  height="200" align="center"><font size="2"><%=prdNo%></font></td>     
	<td   height="200"align="center"><font size="2"><%=prdName%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=prdPrice%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=ctQty%></font></td>
    <td  height="200"align="right"><font size="2"><%=amount%> 원</font></td>  
    <td  height="200"align="center"><a href="deleteCart.jsp?prdNo=<%=prdNo%>"><font size="2" color=blue><b>삭제</b></a></font></td> 	
  </tr>   
	<!--ㅓjsp 내용
<%
	     }  // while문의 끝
 %>-->
  <tr>
	<td colspan = 4 align=center class="order_total"><b>전체 주문총액</b></td>
	<td class="order_total" height="30" align=right><font size="2" color="red"><b><%=total%> 원</b></font></td>
	<td  class="order_total" align=center>(선택물품 총합)</td>
  </tr>
 </table>      

<br><br>

<a href="order.jsp"  class="btn_order_choice_buy">주문하기
	></a>
<!--ㅓjsp 내용
<%
		}	
   }  catch(Exception e)  {
        out.println(e);
} 
%>-->
							<header class=" py-5">		</header>
                    </div>
                      </div></div>
   
							 </div>	
        
                    
	<!--퓨터 수정했습니다-->
					<header class=" py-5">	
		 <!-- Footer-->
         <footer>
		    	
    <div class="footer_container">
      <div class="footer_text">
        <p class="m-0 text-center text-white">WAY<br> 회사소개 이용약관 개인정보취급처리방침 광고문의 관리자로그인<br><br>
          대표 : 정정정 | 이메일 : cs@way.com | 문의전화 : 02-0000-0000 <br>사업자등록번호 : 200-00-00000 통신판매업신고 : 2022-서울강남-00000 <br>주소 : 서울 강남구 XX동 XX로 11-77 Copyright © <br><br>way. All Rights Reserved.</p>
		 
      
		
    </footer>
		</header>
		  
</body>
	</html>