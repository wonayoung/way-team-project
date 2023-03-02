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
		<link href="css/mypage.css" rel="stylesheet" />
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
                <li><a href="#">건강정보</a></li>
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
		response.sendRedirect("login.html"); // 로그인 안됐을 시 로그인 페이지로 이동
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
	
<div class="container">
    <div class="menu_01">
<div class="menu_target">MY PAGE</div>
 <br>
      <br>
<div class="left_menu_bar"><a href="myDeliveryTracking.jsp" class="mypage_menu" style="color: #000099; font-weight: bold;">주문/배송</a> <br>
        <br>
        <a href="myInfo.jsp"class="mypage_menu">회원 정보</a> <br>
        <br>
        <a href="myWhis.jsp"class="mypage_menu">관심상품</a> <br>
        <br>
        <a href="myReserves.jsp"class="mypage_menu">적립금</a> <br>
        <br>

    </div>
       </div>
		
<div class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-2 row-cols-xl-1 justify-content-center">
<div class="col mb-5">
<form method="post" action="myDeliveryTrackingResult.jsp">
    <div class="left_username"><%=id%>님 반갑습니다.</div>
    <hr class="hr_username">
    <p class="blank"></p>
    <span class="checkboxfont1">주문/배송조회</span>
    <p></p>
    <table border=1 class="table_period">
      <tr class="table_left"> 
	    
        <td width=13%><div class="title">기간</div></td>
        <div class="search_detail">
        <div class="period_box">
        <div class="search_detail_title"> </div>
        <td width=44%><div class="period_left">
            <label class="period">
              <input type="radio" value="오늘" name="period">
              <span>오늘</span> </label>
            <label class="period">
              <input type="radio" value="1개월" name="period">
              <span>1개월</span> </label>
            <label class="period">
              <input type="radio" value="2개월" name="period">
              <span>2개월</span> </label>
            <label class="period">
              <input type="radio" value="3개월" name="period">
              <span>3개월</span> </label>
          </div></td>
        <td width=35%><div class="period_right">
            <div id="mytmon_search_calendarWrap" class="calendarWrap">

<%
	String today = new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());//오늘 날짜 받아오기
%>
              <div class="mytmonCalendar">
                <input type="date" name="calendar1" class="calendarText" 
								   id="searchStartDate" max="<%=today%>">
                <div class="calendarText1">- </div>
              </div>

              <div class="mytmonCalendar1">
                <input type="date" name="calendar2" class="calendarText2" id="searchEndDate" min="">
<script>
	var minimum = document.getElementById("searchStartDate").value;
	document.getElementById("searchEndDate").setAttribute('min', minimum);
</script>
              </div>
            </div>

          </div></td>
      </tr>
      <tr class="top_period">
        <td><div class="title">처리 상태</div></td>
        <td colspan="3"><div class="period_left">
            <label class="period">
              <input type="radio" value="환불" name="status" >
              <span>환불</span> </label>
            <label class="period">
              <input type="radio" value="교환" name="status" >
              <span>교환</span> </label>
            <label class="period">
              <input type="radio" value="배송중" name="status">
              <span>배송중</span> </label>
            <label class="period">
              <input type="radio" value="배송완료" name="status">
              <span>배송완료</span> </label>
            <label class="period">
              <input type="radio" value="상품준비" name="status">
              <span>상품준비</span> </label>
            <label class="period">
              <input type="radio" value="배송준비" name="status">
              <span>배송준비</span> </label>
          </div></td>
      </tr>
      
     

    </table>
		   <input type="reset" value="초기화" class="myDeliveryreset">
		    <input type="submit" value="검색" class="myDeliverysearch">
  </form>
	<section class="py-5"></section> 
                
											<span class="checkboxfont1">주문 상품 내역</span><p>

<hr class="hr_username">
<% 
	String DB_URL="jdbc:mysql://localhost:3306/way";
    String DB_ID="multi"; 
    String DB_PASSWORD="abcd";
 	 
	Class.forName("org.gjt.mm.mysql.Driver");  
 	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String sql = "select ordNo from orderInfo where memId = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);

	ResultSet rs = pstmt.executeQuery();

	if(!rs.next()) 
	{                      
%>
		주문 내역이 없습니다.
<%
	}
	else
	{
		String sql1 = "select ordNo, ordDate, ordStatus from orderInfo where memId = ? ORDER BY ordDate desc";
		PreparedStatement pstmt1 = con.prepareStatement(sql1);
		pstmt1.setString(1, id);

		ResultSet rs1 = pstmt1.executeQuery();

		while(rs1.next())
		{
		String ordDate = rs1.getString("ordDate");
		String[] dateArray = ordDate.split(" ");
		String date = dateArray[0];
		
		String ordNo = rs1.getString("ordNo");
		String ordStatus = rs1.getString("ordStatus");
%>
	<h3><%=date%></h3> 주문번호: <%=ordNo%>
<%
		String sql2 = "select * from orderProduct where ordNo = ?";
		PreparedStatement pstmt2 = con.prepareStatement(sql2);
		pstmt2.setString(1, ordNo);

		ResultSet rs2 = pstmt2.executeQuery();

		while(rs2.next()){

		String prdNo = rs2.getString("prdNo");
		int ctQty = rs2.getInt("ordQty");
		

		String sql3 = "select prdName, salePrice from product where prdNo = ?";
		PreparedStatement pstmt3 = con.prepareStatement(sql3);
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
    	    
%>

<table border=0 class="table_border" style="font-size:10pt;font-family:맑은 고딕">
 <tr>           
	 
	<td   height="200"align="left"><font size="2"><a href="viewDetailProduct.jsp?prdNo=<%=prdNo%>"><img src="prdImages\<%=prdNo%>_main.jpg" class="card-img6" /></a></font></td> 
	<td  height="200"align="left" align=right><font size="2"><%=prdName%></font></td> 
	<td  height="200"align="left" align=right><font size="2"><%=ctQty%>개</font></td>
    <td  height="200"align="left"><font size="2"><%=amount%> 원</font></td>  
    <td  height="200"align="left"><b><%=ordStatus%></b></td> 	
  </tr>   

 </table>   
<%	
		}
 %>
	 <hr class="product_line">
<%
	}
	}
%>
                </div>
						
				
               

					
         
                      </div>
					   </div>	
        
                      
                    </div>
                      </div>
                    </div>
                  </header>
		 
				

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
  <a class="btn_chat" href="inquirystatus.jsp">1:1문의하기</a>
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
<script src="js/chat.js"></script> 
<script src="js/top.js"></script> <!-- top버튼 생성-->
<script src="js/autonav.js"></script> <!-- 헤더 고정-->
<script src="js/autoslide.js"></script> 
<script src="button.js"></script> <!--모바일 메뉴-->
		  
</body>
	</html>