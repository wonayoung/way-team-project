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
	 <form>
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
				
        <!-- Header-->
        <!-- Section-->
		 
       <section class="py-3">
		  <p class="MD title">개인정보취급처리방침</p>
           <div class="sub_title">홈 > 개인정보처리취급방침</div>
		 </section>

		 <div class="container  px-4 px-lg-5">                                
</div>
			
    <div class="container px-4 px-lg-5 mt-5">
		
      <article class="advertisement">
      
			1. 총칙 <br><p></p>개인정보란 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명, 휴대폰번호 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보(당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함합니다)를 말합니다. 당사 (이하 “ 주식회사 웨이”)는 귀하의 개인정보보호를 매우 중요시하며, 『정보통신망이용촉진 및 정보보호 등에 관한 법률』상의 개인정보 보호규정 및 개인정보보호법을 준수하고 있습니다. 주식회사 웨이는 개인정보취급방침을 통하여 귀하께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 주식회사 웨이는 개인정보취급방침을 홈페이지 첫 화면에 공개함으로써 귀하께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 주식회사 웨이는 개인정보취급방침의 지속적인 개선을 위하여 개인정보취급방침을 개정하는데 필요한 절차를 정하고 있습니다. 주식회사 웨이의 개인정보취급방침은 다음과 같은 내용들로 구성되어 있으며, 주식회사 웨이가 정한 별도의 절차로 회원가입하거나 브랜드 및 주식회사 웨이 홈페이지, 모바일을 통한 주식회사 웨이 회원가입시에 적용됩니다.
		  <br><p></p>2. 개인정보 수집항목 및 방법 <br><p></p>- 수집방법 : 주식회사 웨이가 정한 별도의 절차로 회원가입하거나 주식회사 웨이 홈페이지, 주식회사 웨이 온라인몰, 모바일에서 별도의 동의를 거쳐 주식회사 웨이 회원가입 할 경우 수집합니다.  <br><p></p>-수집항목 :  <br><p></p> 1) 온라인몰 회원가입시  <br><p></p>[필수 입력사항] <br>① 아이디 ② 성명 ③ 생년월일 ④ 성별 ⑤ 비밀번호 ⑥ E-mail 주소 ⑦ E-mail 수신여부 ⑧ 휴대폰번호 ⑨ 문자 수신여부 <br><p></p>[선택 입력사항] <br> ① 주소 ② DM(우편 등) 수신여부  <br><p></p>2) 오프라인매장 회원가입시<br><p></p> [필수 입력사항]<br> ① 성명 ② 생년월일 ③ 성별 ④ 휴대폰번호 ⑤ 문자 수신여부 서비스 이용 또는 사업처리 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다. : 서비스이용기록, 접속로그, 쿠키, 접속IP정보, 결제기록, 이용정지기록 회원의 기본적 인권을 침해할 우려가 있는 인종, 민족, 사상 및 시조, 출신지 및 본적지, 정치적 성향 및 범죄 기록, 건강상태 및 성생활 등의 정보는 수집하지 않습니다. 
		  <br><p></p>3. 개인정보의 수집 및 이용목적 <br><p></p>① 주식회사 웨이는 회원에게 편리하고 유익한 맞춤정보를 제공하기 위한 최소한의 정보를 필수 사항으로 수집합니다. <br><p></p>- 성명, 아이디, 비밀번호, 휴대폰번호, 생년월일 : 서비스 이용을 위한 본인 확인 절차에 이용<br><p></p> - e-mail 수신여부, 문자 수신여부 : 고지의 전달. 불만처리나 서비스/이벤트 정보 안내 등 원활한 의사소통 경로의 확보, 이벤트내용 전달, 회원혜택 전달<br><p></p> - 그 외 선택항목 : 개인맞춤 서비스를 제공을 위한 자료<br><p></p> ② 주식회사 웨이는 만 14세 미만 아동 개인정보 수집의 경우 법정 대리인 동의여부를 확인합니다. ③ 주식회사 웨이는 회원께서 제공하신 모든 정보는 상기 목적에 필요한 용도 이외로는 사용되지 않으며, 수집 정보의 범위나 사용 목적, 용도가 변경될 시에는 반드시 회원에게 사전 동의를 구할 것입니다.
		  <br><p></p>4. 개인정보 자동수집 장치의 설치, 운영 및 거부 <br><p></p>⊙ 쿠키(cookie)란? <br><p></p>주식회사 웨이는 회원에 대한 정보를 저장하고 수시로 찾아내는 '쿠키(cookie)'를 사용합니다. 쿠키는 웹사이트가 귀하의 컴퓨터 브라우저 (넷스케이프, 인터넷 익스플로러 등)로 전송하는 소량의 정보입니다. 귀하께서 웹사이트에 접속을 하면 본의 컴퓨터는 귀하의 브라우저에 있는 쿠키의 내용을 읽고, 귀하의 추가정보를 귀하의 컴퓨터에서 찾아 접속에 따른 성명 등의 추가 입력 없이 서비스를 제공할 수 있습니다. 쿠키는 회원의 컴퓨터는 식별하지만 귀하를 개인적으로 식별하지는 않습니다.<br> 또한 귀하는 쿠키에 대한 선택권이 있습니다. 웹브라우저 상단의 도구 > 인터넷옵션 탭(option tab)에서 모든 쿠키를 다 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있는 선택권을 가질 수 있습니다.<br><p></p> ⊙ 웨이의 쿠키(cookie) 운용<br><p></p> 웨이는 회원의 편의를 위하여 쿠키를 운영합니다. 웨이가 쿠키를 통해 수집하는 정보는 회원 ID에 한하며, 그 외의 다른 정보는 수집하지 않습니다. 웨이가 쿠키(cookie)를 통해 수집한 회원 ID는 다음의 목적을 위해 사용됩니다.<br><p></p> - 개인의 관심 분야에 따라 차별화 된 정보를 제공<br><p></p> - 회원과 비회원의 접속빈도 또는 머문시간 등을 분석하여 이용자의 취향과 관심분야를 파악하여 타겟(target) 마케팅에 활용<br><p></p> 5. 개인정보의 제3자 제공<br><p></p> 웨이는 회원의 개인정보를 「개인정보의 수집목적 및 이용목적」에서 고지한 범위내에서 사용하며, 회원이 사전에 동의한 경우에 한하여 제공됩니다. <br><p></p>제공받는자: 웨이 이용목적<br><p></p> - 웹사이트 로그인<br><p></p> - 서비스 홍보를 위한 마케팅 활동<br><p></p> - 상품구매 및 배송, 반품 관련 C/S 제공하는 개인정보 항목: 웨이 개인정보 취급방침에 명시된 개인정보 수집항목 보유 및 이용기간: 제3자 제공동의 철회 및 회원탈퇴시까지 - 웨이는 회원의 사전 동의 받은 목적 외 용도로 개인정보를 외부에 제공하지 않습니다.<br><p></p> - 웨이는 제휴계약 등을 신규로 체결하거나 상기 기재된 개인정보 제공업체와의 기존 계약을 해지할 수 있으며 그 경우 개인정보 제공업체에 변경이 생길 수 있습니다. 이에 대한 변경사항은 온라인 홈페이지를 통해 공지하고 별도의 동의를 받을 예정입니다.<br><p></p> ※ 상기에 명기된 제휴업체 이외에 「개인정보의 수집목적 및 이용목적」 범위를 초과하여 이용하거나 타인 또는 타기업, 기관에 제공하지 않습니다. <br><p></p>특히 다음의 경우는 주의를 기울여 개인정보를 이용 및 제공할 것입니다.<br><p></p> - 제휴관계 : 웨이는 제휴업체 이외의 자에게 개인정보가 제공되거나 공유될 시에는 동의를 구할 것입니다. 제휴관계에 변화가 있거나 제휴관계가 종결될 때도 고지하거나 동의를 구합니다
      </article>
    </div>
<section class="py-3"></section>
				
    <!-- Footer-->
    
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
</form>
<script src="js/chat.js"></script> 
<script src="js/top.js"></script> <!-- top버튼 생성-->
<script src="js/autonav.js"></script> <!-- 헤더 고정-->
<script src="js/autoslide.js"></script> 
<script src="button.js"></script> <!--모바일 메뉴-->
</body>
	</html>