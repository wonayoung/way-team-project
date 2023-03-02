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
   
        <title></title>
		
        <!-- Favicon-->
        <!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
        <link href="css/styles.css" rel="stylesheet" />
		 <link href="css/styles1.css" rel="stylesheet" />
<script>
function getPrice(event)		//총 상품금액 출력
{
	var totalPrice = event.target.value;
	if (totalPrice<50000)
	{
		totalPrice=parseInt(totalPrice)+3000;
	}
	document.getElementById('total').innerText = totalPrice+"원";
}

function directOrd()        //  "바로구매" 버튼을 클릭시 호출
{
	var frm = document.product;
	frm.action = "directOrder.jsp";
	frm.submit();
}


function inCart()              //  "장바구니" 버튼을 클릭시 호출
{
	var frm = document.product;
	frm.action = "inCart.jsp";
	frm.submit();
}
function addWish()
{
	var x = document.product.prdNo.value;
	location.href="insertWish.jsp?prdNo="+x;
	return true;
}
function deleteWish()
{
	var y = document.product.prdNo.value;
	location.href="deleteWish.jsp?prdNo="+y;
	return true;
}
function notlogin()
{
	alert("관심 상품 추가는 로그인 후 이용 가능합니다");
	return true;
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
          <a href="viewProductAll.jsp">상품</a>
          <ul>
            <li><a href="viewProductBest.jsp">Best</a></li>
            <li><a href="viewProductAll.jsp">전체상품</a></li>
            <li><a href="viewProductByTarget.jsp">섭취대상별</a></li>
            <li><a href="viewProductByNutri.jsp">성분별</a></li>
            </li>
          </ul>
          <li><a href="nutriGraph.jsp">권장량 계산</a></li>
          <li><a href="#">이벤트</a></li>
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
          <a class="nav-link" href="nutriGraph.jsp">권장량 계산</a> <a class="nav-link "  href="event.html" >이벤트</a>
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

<%

 	 String DB_URL="jdbc:mysql://localhost:3306/way";   
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String no = request.getParameter("prdNo");   

    String jsql = "select * from product where prdNo = ?";   
	PreparedStatement pstmt  = con.prepareStatement(jsql);
	pstmt.setString(1, no);

	ResultSet rs = pstmt.executeQuery();
    rs.next();

	String name =  rs.getString("prdName");	
	int price =  rs.getInt("prdPrice");
	int salePrice = rs.getInt("salePrice");
	String company = rs.getString("prdCompany");
	String dosage =  rs.getString("prdDosage");
%>
        <!-- Header-->
        <header class=" py-9"></header>
				<header class=" py-9"></header>
				<div class="container px-4 px-lg-5">
				 <div class = "card-wrapper">
  <div class = "card">
    <!-- card left -->
    <div class = "product-imgs">
      <div class = "img-display">
        <div class = "img-showcase">
          <img src = "prdImages\<%=no%>_main.jpg" class="datail_img">
          <img src = "prdImages\<%=no%>_sub1.jpg" class="datail_img">
          <img src = "prdImages\<%=no%>_sub2.jpg" class="datail_img">
          <img src = "prdImages\<%=no%>_sub3.jpg" class="datail_img">
		  <img src = "prdImages\<%=no%>_sub4.jpg" class="datail_img">
        </div>
      </div>
      <div class = "img-select">
        <div class = "img-item">
          <a href = "#" data-id = "1">
            <img src = "prdImages\<%=no%>_main.jpg" class="detail_subimg">
          </a>
        </div>
        <div class = "img-item">
          <a href = "#" data-id = "2">
            <img src = "prdImages\<%=no%>_sub1.jpg"  class="detail_subimg">
          </a>
        </div>
        <div class = "img-item">
          <a href = "#" data-id = "3">
            <img src = "prdImages\<%=no%>_sub2.jpg" class="detail_subimg">
          </a>
        </div>
        <div class = "img-item">
          <a href = "#" data-id = "4">
            <img src = "prdImages\<%=no%>_sub3.jpg" class="detail_subimg">
          </a>
        </div>
		<div class = "img-item">
          <a href = "#" data-id = "5">
            <img src = "prdImages\<%=no%>_sub4.jpg" class="detail_subimg">
          </a>
        </div>
      </div>
    </div>
 </div>
					  </div>
					<form name="product"  method="post">   
					<input type="hidden" name="prdNo" value="<%=no%>">
   <div class="item_info_box">
                <!-- //time_sale -->
                <div class="item_tit_detail_cont">
                    <div class="item_detail_tit">
                        <h3 class="tit_color"><%=name%></h3>
						<span style="color: #707070"><%=company%></span>
						<hr  class="line_color">
                        <div class="btn_layer btn_qa_share_box">
                         <!--찜하기-->
<%
	if(id!=null)//로그인 된 경우의 찜하기
	{
		String sql1 = "select * from wishlist where prdNo = ? AND memID = ?";   
		PreparedStatement pstmt1  = con.prepareStatement(sql1);
		pstmt1.setString(1, no);
		pstmt1.setString(2, id);

		ResultSet rs1 = pstmt1.executeQuery();
		if(rs1.next())//이미 찜한 제품일 때
		{
%>
						<button id="btn_add_wish1" onClick="deleteWish()"></button>
<%
		}
		else//찜하지 않아둔 제품일 때
		{
%>
                         <button id="btn_add_wish" onClick="addWish()"></button>
<%
		}
	}
	else//로그인 안된 경우
	{
%>
						<button id="btn_add_wish" onClick="notlogin()"></button>
<%
	}
%>
                           
                           

                            <!-- //layer_area -->
                        </div>
                        <!-- //btn_qa_share_box -->
                    </div>
                    <div class="item_detail_list">
                        <dl>
                            <dt class="temp">정가</dt>
                            <dd>
                                <del><%=price%>원</del>
                            </dd>
                        </dl>
                        <dl class="item_price">
                            <dt>판매가</dt>
                            <dd class="custom-denps-price">
                             <strong class="price_01"><%=salePrice%>원</strong>
                               
                            </dd>
                        </dl>
                        <dl class="dn">
                            <dt>용량</dt>
                            <dd>한 팩당 1개월 분</dd>
                        </dl>
						 <dl class="count">
                            <dt>권장량</dt>
                            <dd><%=dosage%></dd>
                        </dl>
                        <dl class="item_discount_mileage">
                            <dt>적립혜택</dt>
                            <dd>
                             
								<td colspan=2  align=left ><span class="item_mileage">적립금 </span><%=(int)(salePrice*0.01)%>  <strong class="total_benefit_mileage">원</strong> </td>
                            </dd>
                        </dl>


                        <dl class="item_delivery">
                            <dt>배송비</dt>
                            <dd>
                                <strong>택배배송 3,000원</strong><br><br>
                             (50,000원 이상 구매 시 배송비 무료)
                            </dd>
                        </dl>
                        
                        <div class="item_add_option_box custom-option-select">
                            <dl>
                                <dt class="item_add_option_box_margin">옵션</dt>
                                <dd>
									<!-- chosen-select1-->
                                
									
									<div id="radios-style-btns"><div class="denps-option"><span class="option-name"><div class="prd-text"><input type="radio" name="price" value="<%=salePrice%>" onClick="getPrice(event)" checked>
                    &nbsp;     1개월분(1팩) </div> <div class="price-wrap"><span class="final-rendered-price"><span><%=price%>원</span>&nbsp;<%=salePrice%>원</span></div></span></div><div class="denps-option"><span class="option-name"><div class="prd-text"><input type="radio" name="price" value="<%=(int)(salePrice*2*0.95)%>" onClick="getPrice(event)">
                      &nbsp;      2개월분(2팩)(5%할인)</div> <div class="price-wrap"><span class="final-rendered-price"><span> &nbsp; <%=salePrice*2%>원</span> <%=(int)(salePrice*2*0.95)%>원</span></div></span></div><div class="denps-option" ><span class="option-name"><div class="prd-text"><input type="radio" name="price" value="<%=(int)(salePrice*4*0.93)%>" onClick="getPrice(event)">
                        &nbsp;        4개월분(4팩)(7%할인) </div> <div class="price-wrap"><span class="final-rendered-price"><span> &nbsp; <%=salePrice*4%>원</span> <%=(int)(salePrice*4*0.93)%>원</span></div></span></div><div class="denps-option" ><span class="option-name"><div class="prd-text"><input type="radio" name="price" value="<%=(int)(salePrice*6*0.90)%>" onClick="getPrice(event)">
                          &nbsp;         6개월분(6팩)(10%할인) </div> <div class="price-wrap"><span class="final-rendered-price"><span> &nbsp; <%=salePrice*6%>원</span> <%=(int)(salePrice*6*0.90)%>원</span></div></span></div></div>
                                </dd>
                            </dl>
                        </div>
                       
                    </div>                   
	
					
                           
					<hr class="line_color">
                        <div class="item_price_cont">
                            <div class="end_price item_tatal_box">
                               
                                <dl class="total_amount">
                                    <%
										int total=0;
										if(salePrice<50000)
											total=salePrice+3000;
									%>
                                    <dd>총 상품금액&nbsp; &nbsp; <strong class="total_price" id="total"><%=total%>원</strong></dd>
                                    
                                </dl>
                            </div>
                            <!-- //item_tatal_box -->
                        </div>
                        <!-- //item_price_cont -->
                    </div>

                   
												
                            <div class="btn_choice_box_ul">
                            	<button class="btn_add_cart" onClick="inCart()" alt="장바구니 담기">장바구니</button>
								<button class="btn_add_order" onClick="directOrd()" alt="바로 구매하기">바로 구매</button>
                            
       
                              </div>
												
                  </div></form></div></div>
                    <!-- //btn_choice_box -->
<div class="container px-4 px-lg-5">
<div class="form-wrap1">
		<div class="tabs">
			<h3 class="signup-tab"><div class="active" id="1b">상품정보</div></h3>
			<h3 class="signup-tab"><div class="active1" ><a href="#2a">리뷰</a></div></h3>
			<h3 class="signup-tab"><div class="active1" ><a href="#3b">문의</a></div></h3>
			<h3 class="signup-tab"><div class="active1"><a href="#4c">구매안내</a></div></h3>
		</div><!--.tabs-->

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
			<!--디테일 이미지--><center>
				<img class="detailpage" src="prdImages\<%=no%>_detail.jpg">
				<img class="detailpage" src = "prdImages\<%=no%>_detail.jpg" >
</center>
				
			</div>
		</div><!--.tabs-content-->
	</div><!--.form-wrap-->

	
					
            </div>
	</div><!--.form-wrap-->


<div class="container px-4 px-lg-5">
<div class="form-wrap">
		<div class="tabs">
			<h3 class="signup-tab"><div class="active1"><a href="#1b">상품정보</a></div></h3>
			<h3 class="signup-tab"><div class="active" id="2a">리뷰</div></h3>
			<h3 class="signup-tab"><div class="active1" ><a href="#3b">문의</a></div></h3>
			<h3 class="signup-tab"><div class="active1"><a href="#4c">구매안내</a></div></h3>
		</div><!--.tabs-->

		<div class="tabs-content">
			
			 <div class="title_bar"> <div class="review">리뷰</div>
		 <input type="button" class="btn_review" value="작성하기" onclick="location.href='writeReview.jsp?prdNo=<%=no%>'"><br><br>
			   
            </div>
			
				
			
	</div><!--후기 작성하는 란-->
<%
	String sql2 = "select * from review where prdNo = ?";   
		PreparedStatement pstmt2  = con.prepareStatement(sql2);
		pstmt2.setString(1, no);

		ResultSet rs2 = pstmt2.executeQuery();

		while(rs2.next()){
			String reviewName = rs2.getString("memName");
			String reviewContent = rs2.getString("content");
			String reviewImg = rs2.getString("reviewImg");
			int star = rs2.getInt("star");
			String sex = rs2.getString("sex");
			String ageGroup = rs2.getString("ageGroup");
			String reviewDate = rs2.getString("reviewDate");
%>
	<p></p><p></p>
	<!--href="#popUp" id="openPopUp" 넣으면 후기 사진 클릭 시 팝업창이 나옵니다-->
	<div class="Review_img"><a href="#popUp" id="openPopUp" class="review_img_sub" ><img src="img/<%=reviewImg%>"></a></div><!--게시판 이미지 미리보기 총 8개만 넣을 수 있고 그 이상 넣으면 마지막에 더보기형태로 클릭하면 레이어창이 떠 전체 이미지가 보이게하면 좋을 것 같습니다-->

			   <div class="star"><img src="images/icon/star.png"  style="width: 20px;
    height: 20px; float:left" alt=""/></div> <div class="review_user_name"><%=reviewName%> <%=ageGroup%> (<%=sex%>)</div>

 <div class="review_user_day"><%=reviewDate%></div><!--날짜-->
<div class="review_user_text"><%=reviewContent%></div>
<a href="#popUp" id="openPopUp" >
<img  class="Review_userimg" style="width: 75px; clear: both;
    float: left;   margin-top: 10px; margin-bottom: 10px;  height: 75px;" src="img/<%=reviewImg%>"></a><!--작성자가 올린 이미지-->


  
<!-- 미리보기 클릭 시 상품 후기 팝업창 -->
<aside id="popUp" class="popup">
    <div class="popUpContainer">
       <header>
        <a href="#!" class="closePopUp"></a>
        <h2>리뷰</h2>
       </header>
      <article>
      	<div class="review_img_box"><img src="img/<%=reviewImg%>"></div>
		<div class="review_text_box">
<div class="review_text_name"><%=name%></div><br>
<div class="review_text_user"><%=reviewContent%></div>
<div class="review_text_day_and_name">
<span><%=reviewName%>&nbsp; | &nbsp; </span> <span><%=reviewDate%></span></div></div>
      </article>
   </div>        
   <a href="#!" class="closePopUpOutSide"></a>    
</aside>


</div>

  <!--.form-wrap-->

					
            </div>
	</div><!--.form-wrap-->
<%
		}
%>
					
          
    
<div class="container px-4 px-lg-5">
<div class="form-wrap">
		<div class="tabs">
			<h3 class="signup-tab"><div class="active1" id="1a"><a href="#1b">상품정보</a></div></h3>
			<h3 class="signup-tab"><div class="active1" id="1a"><a href="#2a">리뷰</a></div></h3>
			<h3 class="signup-tab"><div class="active" id="3b">문의</div></h3>
			<h3 class="signup-tab"><div class="active1" id="4c"><a href="#4c">구매안내</a></div></h3>
		</div><!--.tabs-->

		<div class="tabs-content">
			
			 <div class="title_bar"> <div class="review">문의</div>
		 <input type="button" class="btn_review" value="작성하기" onclick="">
			</div>
			
				
			
	</div><!--.tabs-content-->
	<p></p><p></p>
	<!--pc용입니다-->
   <!--미답변일경우-->
   <div class="inquiry_box">
	  <table width="100%" border="1" >
  <tbody>
    <tr class="bg_color1">
      <td width="10%" height="20"><div align="center">답변상태</div></td>
      <td width="70%" height="20"><div align="center">제 목</div></td>
      <td width="10%" height="20"><div align="center">작성자</div></td>
      <td width="10%" height="20"><div align="center">작성일</div></td>
    </tr>
    <tr>
      <td width="10%"  style="vertical-align: top">
        <div class="unanswered">미답변</div>
     </td>
        <td>
  <div align="left">
  <div class="summary_service">
     <!--제목-->
     <details><summary> 
      <span class="upload_title">업로드</span></summary> 
      <div class="summary_service_text">금액이 틀리게 나오는데..선착순은 끝나거에요?</div>
        
    </details>
    
    </div>
  </div> </td>
      <td style="vertical-align: top" class="inquirystaus_name">abcd****</td>
      <td style="vertical-align: top" class="inquirystaus_name">2023-02-19</td>
    </tr>
     <!--비밀글인 경우-->
    <tr style="border-top:1px solid #cacaca">
      <td width="10%"  style="vertical-align: top">
        <div class="unanswered">미답변</div>
     </td>
      
        <td>
  <div align="left">
  <div class="summary_service">
  
     <!--제목-->
  
      <span class="upload_title_01">비밀글입니다</span><div class="key_img"></div>
     
    
    </div>
  </div> </td>
      <td class="inquirystaus_name">abcd****</td>
      <td class="inquirystaus_name">2023-02-19</td>
    </tr>
     <!--답변 완료인 경우-->
    <tr style="border-top:1px solid #cacaca">
      
	<td width="10%" colspan="1"  style="vertical-align: top">
    <div class="unanswered">답변 완료</div>
 </td>
      <td > <div align="left"><div class="summary_service">
        <details>
          <!--문의 제목-->
          <summary> 
            <span class="upload_title">업로드</span></summary>
        <details>
              <!--자세한 내용-->
        <summary> 
              <div class="summary_service_text">금액이 틀리게 나오는데..선착순은 끝나거에요?</div>
        
        <!--답변 완료 대답-->
             <div class="summary_answer_hr"> <div class="summary_answer">답변</div><div class="summary_service_text1">금액이 틀리게 나오는데..선착순은 끝나거에요?</div>
            </div>
          </summary>
        </details>
        
        </details>
          
          
      </div> </div></td>
      <td style="vertical-align: top" class="inquirystaus_name">abcd****</td>
      <td style="vertical-align: top" class="inquirystaus_name">2023-02-19</td>
    </tr>
  </tbody>
</table>
 </div>
<!--모바일용입니다-->
<div class="inquiry_box_m">

  <!--미답변일 경우-->
<div class="summary_service_m">
   <!--제목-->
   <details>
    <summary> 
    <div class="upload_title_m">업로드</div>
    <span class="unanswered_m">미답변 |</span>
    <span class="user_m">abcd**** |</span>
    <span class="day_m">2023-02-19</span> 
  </summary> 
     <!--자세한 내용-->
      <div class="summary_service_text_m">금액이 틀리게 나오는데..선착순은 끝나거에요?</div>
    
  </details>
</div>
  
   <!--비밀일 경우 드룹다운 없음-->
<div class="summary_service_m">

   <!--제목-->
  
   <span class="upload_title_01_m">비밀글입니다</span><span class="key_img_m"></span><br>
    <span class="unanswered_m">미답변 |</span>
    <span class="user_m">abcd**** |</span>
    <span class="day_m">2023-02-19</span>
  
  </div> 

  <!--답변완료일 경우-->
   <div class="summary_service_m">
      <details>
        <!--문의 제목-->
        <summary> 
          <div  class="upload_title_m">업로드</div>
          <span class="unanswered_m">답변완료 |</span>
          <span class="user_m">abcd**** |</span>
          <span class="day_m">2023-02-19</span></summary>
      <details>
            <!--자세한 내용-->
      <summary> 
            <div class="summary_service_text_m">금액이 틀리게 나오는데..선착순은 끝나거에요?</div>
      
      <!--답변 완료 대답-->
           <div class="summary_answer_hr"> <div class="summary_answer">답변</div><div class="summary_service_text1">금액이 틀리게 나오는데..선착순은 끝나거에요?</div>
          </div>
        </summary>
      </details>
      
      </details>
        
        
    </div> </div></div>
</div>

</div>
</div>
<h3 onClick="expandcontent('sc1')"  cl.form-wrap-->

					
            </div>
	</div><!--.form-wrap-->
					
            </div>      
    
<div class="container px-4 px-lg-5">
<div class="form-wrap">
		<div class="tabs">
			<h3 class="signup-tab"><div class="active1" id="1a"><a href="#1b">상품정보</a></div></h3>
			<h3 class="signup-tab"><div class="active1" id="1a"><a href="#2a">리뷰</a></div></h3>
			<h3 class="signup-tab"><div class="active1" ><a href="#3b">문의</a></div></h3>
			<h3 class="signup-tab"><div class="active" id="4c">구매안내</div></h3>
		</div><!--.tabs-->

		<div class="tabs-content">
			
			 <div class="title_bar"> <div class="review">구매안내</div>
		 
			</div>
			
				
			
	</div><!--.tabs-content-->
	<div class="shipping_line">
	<div class="shipping">배송</div>
	<p>배송은 평일 결제 시 오후 12시에 출고가 마감됩니다. 오후 12시 이후 결제 건은 익일 출고가 진행됩니다. (주말 결제 시 다음 영업일 출고)</p><br>
배송이 시작된 후에는 배송지 변경 및 취소가 불가능합니다.<br>배송기간은 출고일로부터 평균 3~5일 정도 소요됩니다.<br>도서·산간 지역 배송 시 추가 배송비가 없으나, 배송 기일이 추가적으로 소요될 수 있는 점 양해하여 주시기 바랍니다.<br>배송 과정 중 기상 악화 혹은 도로교통 상황에 따라 부득이하게 지연 배송이 발생될 수 있습니다.<br><p></p><p></p>
<div class="shipping">교환 및 반품</div>
<p>교환 및 반품은 상품을 수령한 날부터 7일 이내에 고객센터로 문의해 주시기 바랍니다.</p>
<br>제품 이상, 오배송 등과 같은 회사에 귀책사유가 있는 경우 맞교환이 진행됩니다. (배송비 회사 부담/부분 반품 가능)<br>제품 교환은 단순 고객 변심의 경우에는 교환을 원하는 제품은 반품(배송비 5,000원 고객부담)으로 진행되고, 수령을 원하는 제품은 추가 결제로 배송됩니다.<br>반품 후 환불금액은 상품 회수 및 검수 후 결정됩니다. (검수 시 상품의 훼손 및 누락이 있을 경우 변동될 수 있습니다.)<br>반품완료 및 교환회수 완료는 택배기사가 고객님께 반품/교환 상품을 인계받은(수거) 날로부터 약 3~5일 소요됩니다. (영업일 기준)<br>
  </div> </div><!--.form-wrap-->

					
            </div>
	</div><!--.form-wrap-->
					
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

<a class="github-source"   target="_blank"><i class="fa fa-github"></i></a>
	<!--위로가기 버튼 모든 html에 적용해주세요-->
  <a href="#" class="go-top"></a> 
  
  <!-- Footer-->
  <footer>
    <div class="footer_container">
      <div class="container px-4 px-lg-5 mt-5">
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
<script src="detailpage.js"></script>
         <script src="button.js"></script>
		  <script src="tab bar.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
 
<script type=html>