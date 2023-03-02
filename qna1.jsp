<!-- 로그인 후의 메인 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
   <head>
   <title>게시판 리스트 보기</title>
    
        <link href="css/styles.css" rel="stylesheet" />
    
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
	
<div class="container">
    <div class="menu_01">
<div class="menu_target">고객센터</div>
<br>	
<br>
<div class="left_menu_bar"><a href="notice.jsp">공지사항</a> <br><br>
				<a style="color: #000099; font-weight: bold;">자주 묻는 질문</a>
				<br><br>
				<a href="inquirytable.jsp">1:1 문의</a>
	  </div>
    </div>
</div>
								
<div class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-2 row-cols-xl-1 justify-content-center">
<div class="col mb-5">
                
					<div class="inquiry">자주 묻는 질문</div>
<hr class="hr_username1">
<script type="text/javascript">



/***********************************************

* Contractible Headers script- ⓒ Dynamic Drive (www.dynamicdrive.com)

* This notice must stay intact for legal use. Last updated Oct 21st, 2003.

* Visit http://www.dynamicdrive.com/ for full source code

***********************************************/



var enablepersist="on" //Enable saving state of content structure using session cookies? (on/off)

var collapseprevious="yes" //Collapse previously open content when opening present? (yes/no)



if (document.getElementById){

document.write('<style type="text/css">')

document.write('.switchcontent{display:none;}')

document.write('</style>')

}



function getElementbyClass(classname){

ccollect=new Array()

var inc=0

var alltags=document.all? document.all : document.getElementsByTagName("*")

for (i=0; i<alltags.length; i++){

if (alltags[i].className==classname)

ccollect[inc++]=alltags[i]

}

}



function contractcontent(omit){

var inc=0

while (ccollect[inc]){

if (ccollect[inc].id!=omit)

ccollect[inc].style.display="none"

inc++

}

}



function expandcontent(cid){

if (typeof ccollect!="undefined"){

if (collapseprevious=="yes")

contractcontent(cid)

document.getElementById(cid).style.display=(document.getElementById(cid).style.display!="block")? "block" : "none"

}

}



function revivecontent(){

contractcontent("omitnothing")

selectedItem=getselectedItem()

selectedComponents=selectedItem.split("|")

for (i=0; i<selectedComponents.length-1; i++)

document.getElementById(selectedComponents[i]).style.display="block"

}



function get_cookie(Name) { 

var search = Name + "="

var returnvalue = "";

if (document.cookie.length > 0) {

offset = document.cookie.indexOf(search)

if (offset != -1) { 

offset += search.length

end = document.cookie.indexOf(";", offset);

if (end == -1) end = document.cookie.length;

returnvalue=unescape(document.cookie.substring(offset, end))

}

}

return returnvalue;

}



function getselectedItem(){

if (get_cookie(window.location.pathname) != ""){

selectedItem=get_cookie(window.location.pathname)

return selectedItem

}

else

return ""

}



function saveswitchstate(){

var inc=0, selectedItem=""

while (ccollect[inc]){

if (ccollect[inc].style.display=="block")

selectedItem+=ccollect[inc].id+"|"

inc++

}



document.cookie=window.location.pathname+"="+selectedItem

}



function do_onload(){

getElementbyClass("switchcontent")

if (enablepersist=="on" && typeof ccollect!="undefined")

revivecontent()

}





if (window.addEventListener)

window.addEventListener("load", do_onload, false)

else if (window.attachEvent)

window.attachEvent("onload", do_onload)

else if (document.getElementById)

window.onload=do_onload



if (enablepersist=="on" && document.getElementById)

window.onunload=saveswitchstate



</script>
<meta name="generator" content="Namo WebEditor(Trial)">
</head>



<body>
<ul class="tab">
  <li id="faq_1_li" class="curr"><a href="#">전체</a></li>
  <li id="faq_2_li"><a href="#">배송관련</a></li>
  <li id="faq_3_li"><a href="#">상품관련</a></li>
  <li id="faq_4_li"><a href="#">회원관련</a></li>
  <li id="faq_5_li"><a href="#">취소/교환/환불관련</a></li>
                           
</ul>
<h3 onClick="expandcontent('sc1')"  class="summary_text" style="cursor:hand; cursor:pointer"><span style="color: #707070; font-weight: normal;" calss="bown_text">배송문의</span> &nbsp; &nbsp; &nbsp; &nbsp;<em>Q</em> <span style="color: #000099">배송기간은 얼마나 걸리죠?</span></h3>

<div id="sc1" class="switchcontent">

<font ><span style="font-size:10pt;">결제 확인시간 11시 전일 경우 당일 주문건으로 처리되어 2~5일(주말제외),
결제 확인시간 11시 이후 일 경우 익일 전문건으로 처리되어 2~5일(주말제외) 정도 소요됩니다^^
물품에 따라 주문량이 많은 상품일 경우 추가 시일 발생할 수 있습니다.</span></font><font face="맑은 고딕"><span style="font-size:11pt;"></span></font>

</div>



<h3 onClick="expandcontent('sc2')"  class="summary_text" style="cursor:hand; cursor:pointer"><span style="color: #707070; font-weight: normal;" calss="bown_text">배송문의</span> &nbsp; &nbsp; &nbsp; &nbsp;<em>Q</em> <span style="color: #000099">오배송 or 불량일 경우는 어떻게 하나요?</span></h3>

<div id="sc2" class="switchcontent">
<font face="맑은 고딕"><span style="font-size:10pt;">상품이 오배송이나 불량이 왔을 경우엔 절대 사용하지 마시고,
고객센터로 문의주시면 신속히 처리해드리겠습니다.
(사용으로 인해
변형되거나 훼손되면 무슨 사유가 있어도 무조건 교환 / 환불이 불가능합니다.)</span></font><font face="맑은 고딕"><span style="font-size:11pt;"></span></font></div>


<h3 onClick="expandcontent('sc3')"class="summary_text" style="cursor:hand; cursor:pointer"><span style="color: #707070; font-weight: normal;" calss="bown_text">환불관련</span>&nbsp; &nbsp; &nbsp; &nbsp; <em>Q</em><span style="color: #000099">반품 보냈는데 언제쯤 환불이되죠?</span></h3>

<div id="sc3" class="switchcontent">
<font face="맑은 고딕"><span style="font-size:10pt;">반품하신 상품의 환불은 물품이 남서울&nbsp;물류센터에 도착한 후 2~3일 내로 처리되오니
양지해주시기 바랍니다.
카드 취소의 경우 취소 후 카드 대행사와 카드사의 전산 처리 시간으로 인하여 취소된 날로부터
2~7일 안에 카드사에서 확인이 가능합니다.
만일 시일이 많이 지체되었지만, 환불되지 않았을 경우 상품을 반품 하실때의
이용하신 택배사(꼭 우체국택배 이용) 이름 및 운송장 번호를 고객센터&amp;교환반품문의 게시판으로
알려주시면 보다 신속히 확인 후 처리해드리겠습니다.</span></font><font face="맑은 고딕"><span style="font-size:11pt;"></span></font>
</div>


</div>
			</div>
	   </div>

<header class=" py-6"></header>
				

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
		
		  
</body>
	</html>
