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
        <script type="text/javascript" src="js_way.js?ver=1">
		</script>
        <link href="css/styles.css" rel="stylesheet" />
    </head>

<body onLoad="idFocus()" style="overflow-x:hidden; overflow-y:auto;">
	 <!--</form>-->
			
        <!-- Navigation-->
<div class="container1 px-4 px-lg-5">

  <div class="service"><a href="login.html">로그인</a>&nbsp;&nbsp; <a href="signUp.jsp"> 회원가입</a>&nbsp; &nbsp; 고객센터</div>
</div>
        <nav class="navbar navbar-expand-lg navbar-light">
			
          <div class="container px-4 px-lg-5">
				
                <div class="navbar-brand"  onclick='window.location.href = "index.jsp"'></div>
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
				 

	<header class=" py-5"></header>
          <div class="signUp10">
			
					<div class="container px-4 px-lg-5">
	
<div class="container">
    <div class="menu_01">
<div class="menu_target">MY PAGE</div>
				
<br>
<div class="left_menu_bar"><a href="#">주문/배송</a> <br>
				<a href="#">회원 정보</a>
				<br>
				<a href="#">관심상품</a>
				<br>
				<a href="#">적립금</a>
				<br>
				<a href="#">문의현황</a></div>
    </div>
       </div>
		
<div class="row gx-4 row-cols-1 row-cols-md-2 row-cols-xl-1 justify-content-center">
<div class="col mb-5">
               
					<div class="left_username">user님 반갑습니다.</div>
<hr class="hr_username"><p class="blank"></p>
					<span class="checkboxfont1">회원 정보 수정</span><p></p>
					
          
				
					<div class="signUp9"><br>
					<form name="signUp" method="post" action="signUpFinsh.jsp">
						
				      <div class="inputtitle1">아이디*</div> <input name="id" type="text"  class="inputtext1" placeholder="아이디를 입력해주세요">
				<br>
                <div class="inputtitle1">비밀번호*</div>
<input type="password" name="pw" class="inputtext1"><br>
<div class="inputtitle1">비밀번호 확인*</div>
<input type="password" name="checkPw" class="inputtext1"><br>
<div class="inputtitle1">이름* </div>
<input type="text" name="name" class="inputtext1"><br>
<div class="inputtitle1">생년월일*</div>
<input type="text" name="birth" placeholder="숫자만 입력해주세요" class="inputtext1"><br>

				<div class="inputtitle1">휴대전화 번호* </div>
				<input type="text" name="phone" placeholder="숫자만 입력해주세요" class="inputtext1"><br>
                <div class="inputtitle1">전화번호 </div>
                <input type="text" name="tel" placeholder="숫자만 입력해주세요" class="inputtext1"><br>
                <div class="inputtitle1">주소</div>
                <input type="text" name="addr" class="inputtext1"><br>
                <div class="inputtitle1">성별</div>
                <div class="sex_section">
  <input type="radio" name="sex" value="여성" >
  <span style="color: #707070">여성</span>
  <input type="radio" name="sex" value="남성" >
  <span style="color: #707070">남성</span>
  <input type="radio" name="sex" value="선택안함"   checked>
                  <span style="color: #707070">선택안함</span></div>
                <br>
				<br><br>


		
                	
						 </div>

					</div>
	
	</div> <div class="container1 px-4 px-lg-5">
						  
<div class="bt_section">
	
  <input type="button" value="회원정보수정" onClick="checkValue()" class="such_bt">
  <input type="reset" value="취소"  class="such_bt1">
								</div></div></div>
		 <header class=" py-5"></header>
					
		 </form> 
				

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