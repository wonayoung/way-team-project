<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
  	<!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
        <title></title>
		
        <!-- Favicon-->
        
        <link href="css/styles.css" rel="stylesheet" />
    <script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
    </script>

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
				 
				  <header class=" py-5">
          
			
					<div class="container px-4 px-lg-5">
							<div class="footer_title02">장바구니</div>
						<!--글자 색상 추가하였습니다-->
<div class="footer_title03"> <span style="color: #000099">장바구니</span><span style="color: #707070">>주문결제>주문완료</span></div>
					 <div class="cart_list">
					  					<div class="px-4 mt-5">
											 
						
			
         
         
                    <!-- //order_cart_tit -->

                    

                
  

<% 
	String DB_URL="jdbc:mysql://localhost:3306/way";
    String DB_ID="multi"; 
    String DB_PASSWORD="abcd";
 	 
	Class.forName("org.gjt.mm.mysql.Driver");  
 	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String jsql = "select * from cart where memId = ?";
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, id);

	ResultSet rs = pstmt.executeQuery();

	if(!rs.next()) 
	{                      
%>
		장바구니가 비었습니다.
<%
	}
	else
	{
%>

<table border=0 class="table_border" style="font-size:10pt;font-family:맑은 고딕">
<tr>       
   <td  width = "20%" height="30" align="center"  class="order_con05"><p align="center"><font size="2" color="#ECFAE4"><strong>상품</strong></font></td>       
   <td width = "20%" height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>상품명</strong></font></td>       
   <td  width = "20%" height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>상품단가(원)</strong></font></td>       
   <td  width = "20%"height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>주문수량(개)</strong></font></td>     
   <td   width = "10%" height="30" align="center" class="order_con05"><p><font size="2" color="#ECFAE4"><strong>주문액(원)</strong></font></td>  
   <td   width = "10%" height="30" align="center" class="order_con05"><p><font size="2" color="red"><b>[상품삭제]</b></font></td>
 </tr> 		
<%
		String jsql2 = "select prdNo, ctQty from cart where memId = ?";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
		pstmt2.setString(1, id);		

		ResultSet rs2 = pstmt2.executeQuery(); 

		int total=0;

		while(rs2.next()) 
  		{			                   
			String prdNo = rs2.getString("prdNo");	
    		int ctQty = rs2.getInt("ctQty");	         

    		String jsql3 = "select prdName, salePrice from product where prdNo = ?";
	    	PreparedStatement pstmt3 = con.prepareStatement(jsql3);
		    pstmt3.setString(1, prdNo);
		    
			ResultSet rs3 = pstmt3.executeQuery(); 
			rs3.next();

			String prdName = rs3.getString("prdName");	  
			int salePrice = rs3.getInt("salePrice");
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
%>

	
 <tr>       
    <td  height="200" align="center"><font size="2"><a href="viewDetailProduct.jsp?prdNo=<%=prdNo%>"><img src="prdImages\<%=prdNo%>_main.jpg" class="card-img-top" /></a></font></td>     
	<td   height="200"align="center"><font size="2"><a href="viewDetailProduct.jsp?prdNo=<%=prdNo%>"><%=prdName%></a></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=salePrice%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=ctQty%></font></td>
    <td  height="200"align="right"><font size="2"><%=amount%> 원</font></td>  
    <td  height="200"align="center"><a href="deleteCart.jsp?prdNo=<%=prdNo%>"><font size="2" color=blue><b>삭제</b></a></font></td> 	
  </tr>   

<%
	     }
 %>
  <tr>
	<td colspan = 4 align=center class="order_total"><b>전체 주문총액</b></td>
	<td class="order_total" height="30" align=right><font size="2" color="red"><b><%=total%> 원</b></font></td>
	<td  class="order_total" align=center>(선택물품 총합)</td>
  </tr>
 </table>      
<%
	}
%>
<br><br>

<a href="order.jsp"  class="btn_order_choice_buy">주문하기
	></a>

							<header class=" py-5">		</header>
                    </div>
                      </div></div>
   
							 </div>	
        
                    

					<header class=" py-5">	
	
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
		</header>
    <script src="js/chat.js"></script> 
    <script src="js/top.js"></script> <!-- top버튼 생성-->
    <script src="js/autonav.js"></script> <!-- 헤더 고정-->
    <script src="js/autoslide.js"></script> 
    <script src="button.js"></script> <!--모바일 메뉴-->
</body>
	</html>