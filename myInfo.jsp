<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title></title>
		
        <!-- Favicon-->
        <link href="css/styles.css" rel="stylesheet" />
    
				<!--이메일 도메인 선택-->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
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
</script>
<script type="text/javascript">
function checkValue()           
{                                           
	var pw=document.updateMember.pw.value;
	var checkPw=document.updateMember.checkPw.value;

    if(pw == "") 
    {
		alert("현재 사용 중인 비밀번호나 변경할 비밀번호를 입력해 주세요!");
		document.updateMember.pw.focus();
		return;
    }
    
	if(checkPw == "") 
    {
		alert("확인 비밀번호를 입력해 주세요!");
		document.updateMember.checkPw.focus();
		return;
    }
    
	if(pw!==checkPw){
		alert("비밀번호가 다릅니다!");
		document.updateMember.pw.focus();
		return;
	}


    if(document.updateMember.name.value == "") 
    {
		alert("성명을 입력해 주세요!");
		document.updateMember.name.focus();
		return;
    }

    if(document.updateMember.birth.value == "") 
    {
		alert("생년월일을 입력해 주세요!");
		document.updateMember.birth.focus();
		return;
    }

    if(document.updateMember.email1.value == "") 
    {
		alert("이메일 앞자리를 입력해 주세요!");
		document.updateMember.email1.focus();
		return;
    }

    if(document.updateMember.email2.value == "") 
    {
		alert("이메일 뒷자리를 입력해 주세요!");
		document.updateMember.email2.focus();
		return;
    }

    if(document.updateMember.phone.value == "") 
    {
		alert("연락처를 입력해 주세요!");
		document.updateMember.birthMonth.focus();
		return;
    }

    updateMember.submit();   // 입력한 값들을 모두 서버로 전송함
}

</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
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
          <div class="updateMember10">
			
					<div class="container px-4 px-lg-5">
	
<div class="container">
    <div class="menu_01">
<div class="menu_target">MY PAGE</div>
				
 <br>
      <br>
<div class="left_menu_bar"><a href="myDeliveryTracking.jsp">주문/배송</a> <br><br>
				<a href="myInfo.jsp" style="color: #000099; font-weight: bold;">회원 정보</a>
				<br><br>
				<a href="myWhis.jsp">관심상품</a>
				<br><br>
				<a href="myReserves.jsp">적립금</a>
				<br><br>
				</div>
    </div>
       </div>
		
<div class="row gx-4 ">
<div class="col mb-5">



					<div class="left_username"><%=id%>님 반갑습니다.</div>
<hr class="hr_username"><p class="blank"></p>
					<span class="checkboxfont1">회원 정보 수정</span><p></p>
					
<%
	String DB_URL = "jdbc:mysql://localhost:3306/way";
	String DB_ID = "multi";
	String DB_PASSWORD = "abcd";	 

	Class.forName("org.gjt.mm.mysql.Driver");
	Connection con=DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String sql = "select * from member where memId=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1,id);
	
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	String name = rs.getString("memName");
	String birth = rs.getString("memBirth");
	String email = rs.getString("memEmail");
	//이메일 자르기
	String[] emailArr = email.split("@");
	String phone = rs.getString("memPhone");
	String tel = rs.getString("memTel");
	String postcode = rs.getString("memPost");
	String addr = rs.getString("memAddr");
	String detail = rs.getString("memDetail");
	String extra = rs.getString("memExtra");
	String sex = rs.getString("memSex");
%>
				
					<div class="updateMember9"><br>
					<form name="updateMember" method="post" action="updateMember.jsp">
						<table width="auto" border="1" >
  <tbody>
    <tr style=" white-space: nowrap">
      <th width="20%" scope="row" class="member_row">아이디</th>
      <td colspan='3' width="90%"><input name="id" type="hidden"  class="inputtext" value="<%=id%>"><%=id%></td>
   
    </tr>
    <tr>
      <th scope="row" width="20%" style=" white-space: nowrap" >비밀번호 변경</th>
      <td colspan='3'><input type="password" name="pw" class="inputtext1"></td>
    </tr>
    <tr>
      <th scope="row">비밀번호 확인</th>
      <td colspan='3'>
<input type="password" name="checkPw" class="inputtext1"></td>
    
    </tr>
    <tr>
      <th scope="row">이름 </th>
       <td colspan='3'><input type="text" name="name" value="<%=name%>" class="inputtext1"></td>
    </tr>
    <tr>
      <th scope="row">생년월일</th>
      <td colspan='3'>
<input type="text" name="birth" value="<%=birth%>" placeholder="숫자만 입력해주세요" class="inputtext1"></td>
    </tr>
    <tr>
      <th scope="row">이메일</th>
       <td colspan='3'><input type="text" name="email1" value="<%=emailArr[0]%>" class="inputemail"> &nbsp; @ &nbsp;
     
<input type="text" name="email2" value="<%=emailArr[1]%>" class="inputemail1">
		&nbsp;
<select name="select_email" onChange="selectEmail(this)" class="inputemail1">
        <option value="" selected>선택하세요</option>
        <option value="naver.com">naver.com</option>
        <option value="daum.net">daum.net</option>
		<option value="nate.com">nate.com</option>
		<option value="hotmail.com">hotmail.com</option>
		<option value="gmail.com">gmail.com</option>
        <option value="1">직접입력</option>
</select></td>
    </tr>
    <tr>
      <th scope="row">휴대전화 번호</th>
      <td colspan='3'>
<input type="text" name="phone" value="<%=phone%>" placeholder="숫자만 입력해주세요" class="inputtext1"></td>
    </tr>
    <tr>
      <th scope="row">전화번호</th>
       <td colspan='3'>
<input type="text" name="tel" value="<%=tel%>" placeholder="숫자만 입력해주세요" class="inputtext1"></td>
    </tr>
    <tr>
      <th scope="row">주소</th>
      <td>
		   <input type="text" name="postcode" value="<%=postcode%>" id="sample6_postcode" class="idbarAddress" placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()" class="idbutAddress" value="우편번호 찾기"><br><br>
				<input type="text" name="addr" value="<%=addr%>" id="sample6_address"class="inputtext" placeholder="주소"><br><br>
				<input type="text" name="detail" value="<%=detail%>" id="sample6_detailAddress"  class="inputtextAddress" placeholder="상세주소">
				<input type="text" name="extra" value="<%=extra%>" id="sample6_extraAddress"class="inputtextAddress1" placeholder="참고항목"><br><br>

		  
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
	   <tr>
      <th scope="row">성별</th>
      <td colspan='3'>
<div class="sex_section">
<%
	if(sex.equals("여성"))
	{
%>
		<input type="radio" name="sex" value="여성" checked>
		<span style="color: #707070">여성</span>
		<input type="radio" name="sex" value="남성" >
		<span style="color: #707070">남성</span>
		<input type="radio" name="sex" value="선택안함"  >
		<span style="color: #707070">선택안함</span></div>
<%
	}	
	else if(sex.equals("남성"))
	{
%>
		<input type="radio" name="sex" value="여성" >
		<span style="color: #707070">여성</span>
		<input type="radio" name="sex" value="남성" checked>
		<span style="color: #707070">남성</span>
		<input type="radio" name="sex" value="선택안함"  >
		<span style="color: #707070">선택안함</span></div>
<%
	}
	else
	{
%>				
		<input type="radio" name="sex" value="여성" >
		<span style="color: #707070">여성</span>
		<input type="radio" name="sex" value="남성" >
		<span style="color: #707070">남성</span>
		<input type="radio" name="sex" value="선택안함" checked>
		<span style="color: #707070">선택안함</span></div>
<%
	}
%>
</td>
    </tr>
   
  </tbody>
</table>

	
	 <div class="container1 px-4 px-lg-5">
						  
<div class="bt_section">
	

  <input type="reset" value="취소"  class="such_bt1">
	  <input type="button" value="회원정보수정" onClick="checkValue()" class="such_bt">
								</div></div></div>
		 <header class=" py-5"></header>
					
		 </form> 
	</div>	
			</div>	
</div>
</header>
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