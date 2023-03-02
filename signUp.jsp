<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title></title>
		
        <!-- Favicon-->
        
		</script>
		<!--이메일 도메인 선택-->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
		<!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
<script type="text/javascript">
function selectEmail(ele){
    var $ele = $(ele);
    var $email2 = $('input[name=email2]');

    // '1'인 경우 직접입력
    if($ele.val() == "1"){
        $email2.attr('readonly', false);
        $email2.val('');
    } else {
        $email2.attr('readonly', true);
        $email2.val($ele.val());
    }
}
//ID 중복체크
function checkID()		
{  										
	var id = document.signUp.id.value;		

    if (id  == "")				
    {
		alert("ID를 입력해 주세요!"); 
		document.signUp.id.focus(); 
		return; 
    }

	window.open("checkId.jsp?id="+id,"win", "width=255, height=145, scrollbars=no, resizable=no");
}                                        



//유효성검사
function checkValue()           
{                                           
	if(document.signUp.id.value == "")   
    {
		alert("ID를 입력해 주세요!");  
		document.signUp.id.focus();					
		return;                         
    }

	var pw=document.signUp.pw.value;
	var checkPw=document.signUp.checkPw.value;

    if(pw == "") 
    {
		alert("비밀번호를 입력해 주세요!");
		document.signUp.pw.focus();
		return;
    }
    
	if(checkPw == "") 
    {
		alert("확인 비밀번호를 입력해 주세요!");
		document.signUp.checkPw.focus();
		return;
    }
    
	if(pw!==checkPw){
		alert("비밀번호가 다릅니다!");
		document.signUp.pw.focus();
		return;
	}


    if(document.signUp.name.value == "") 
    {
		alert("성명을 입력해 주세요!");
		document.signUp.name.focus();
		return;
    }

    if(document.signUp.birth.value == "") 
    {
		alert("생년월일을 입력해 주세요!");
		document.signUp.birth.focus();
		return;
    }

    if(document.signUp.email1.value == "") 
    {
		alert("이메일 앞자리를 입력해 주세요!");
		document.signUp.email1.focus();
		return;
    }

    if(document.signUp.email2.value == "") 
    {
		alert("이메일 뒷자리를 입력해 주세요!");
		document.signUp.email2.focus();
		return;
    }

    if(document.signUp.phone.value == "") 
    {
		alert("연락처를 입력해 주세요!");
		document.signUp.birthMonth.focus();
		return;
    }

    signUp.submit();   // 입력한 값들을 모두 서버로 전송함
}




//커서 아이디 입력창에
function idFocus()        
{									
	document.signUp.id.focus();
	return;
}

//혹시나 -입력해도 잘 돌아가게 수정해주기
function deleteHy()
{
	var myphone = document.signUp.phone.value.replace(/\-/g,'');

	var Myelement = document.getElementById("phone");
	Myelement.value = myphone;

	return;
}

function deleteHy2()
{
	var mytel = document.signUp.tel.value.replace(/\-/g,'');

	var Myelement2 = document.getElementById("tel");
	Myelement2.value = mytel;

	return;
}
</script>
        <link href="css/styles.css" rel="stylesheet" />
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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

				 
				  <header class=" py-5">
          
				<div class="footer_title01">회원가입</div>
					<div class="container px-4 px-lg-5 mt-5">
					  					<div class="container px-4 px-lg-5 mt-5">
					<div class="signUp"><br>
					<form name="signUp" method="post" action="signUpFinsh.jsp">
						<div class="inputtitle">아이디*</div>
					    <div class="idbarbax">
                          <input name="id" type="text"  class="idbar" placeholder="아이디를 입력해주세요">
                          
                          <input type="button" value="중복 확인" onClick="checkID()"  class="idbut">
                        </div>
                <div class="inputtitle">비밀번호*</div>
<input type="password" name="pw" class="inputtext"><br>
<div class="inputtitle">비밀번호 확인*</div>
<input type="password" name="checkPw" class="inputtext"><br>
<div class="inputtitle">이름* </div>
<input type="text" name="name" class="inputtext"><br>
<div class="inputtitle">생년월일*</div>
<input type="text" name="birth" placeholder="숫자만 입력해주세요" class="inputtext"><br>
<div class="inputtitle">이메일* </div>
<div class="emailbox">
  <input type="text" name="email1" class="inputemail">
  @
  <input type="text" name="email2" class="inputemail1">
  <select name="select_email" onChange="selectEmail(this)" class="emailselect">
    <option value="" selected>선택하세요</option>
    <option value="naver.com">naver.com</option>
    <option value="daum.net">daum.net</option>
    <option value="nate.com">nate.com</option>
    <option value="hotmail.com">hotmail.com</option>
    <option value="gmail.com">gmail.com</option>
    <option value="1">직접입력</option>
  </select>
</div><br>
				<div class="inputtitle">연락처* </div>
				<input type="text" name="phone" id="phone" placeholder="숫자만 입력해주세요" onblur="javascript:deleteHy();" class="inputtext"><br>
                <div class="inputtitle">연락처2 </div>
                <input type="text" name="tel" id="tel" placeholder="숫자만 입력해주세요" onblur="javascript:deleteHy2();" class="inputtext"><br>
				<div class="inputtitle">주소</div>
				<input type="text" name="postcode" id="sample6_postcode" class="idbarAddress" placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()" class="idbutAddress" value="우편번호 찾기"><br><br>
				<input type="text" name="addr" id="sample6_address" class="inputtext" placeholder="주소"><br><br>
				<input type="text" name="detail" id="sample6_detailAddress"  class="inputtextAddress" placeholder="상세주소">
				<input type="text" name="extra" id="sample6_extraAddress"  class="inputtextAddress1" placeholder="참고항목"><br><br>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
                
                <div class="inputtitle">성별</div>
<input type="radio" name="sex" value="여성" >
<span style="color: #707070">여성</span>
<input type="radio" name="sex" value="남성" >
<span style="color: #707070">남성</span>
<input type="radio" name="sex" value="선택안함"   checked>
					<span style="color: #707070">선택안함</span><br>
				<br><br>
				<input type="button" value="회원가입" onClick="checkValue()" class="sign_btn_submit"> <p></p>
				<input type="reset" value="취소" class="sign_btn_reset">
				</div>
						  </form>
					  
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
  <script src="js/autoslide.js"></script> 
  <script src="button.js"></script> <!--모바일 메뉴-->
</div>
		  
</body>
	</html>