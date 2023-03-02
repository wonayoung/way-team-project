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
				
			  <div class="navbar-brand"  onclick='window.location.href = "index.html"'></div>
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
				
<body onLoad="inputFocus()">
<center>
	
					  					  <header class=" py-5">
          
<div class="footer_title01">영양소 함량 입력</div>
						<div class="container px-4 px-lg-5 mt-5">
							
												<div class="signUp1"><br>	
<form name="nutri" method="post" action="inputNutri.jsp">
<div class="space">vit A</div><div class="unit">mcg</div>
<input type="text" name="vitA" class="idbar1"> 
<br><br>
<div class="space">vit E</div> <div class="unit">mg</div><input type="text" name="vitE"  class="idbar1">
<br><br>
<div class="space">vit C </div><div class="unit">mg</div><input type="text" name="vitC"  class="idbar1"><br><br>
<div class="space">vit B1 </div><div class="unit">mg</div><input type="text" name="vitB1"  class="idbar1"><br><br>
<div class="space">vit B2</div><div class="unit">mg</div><input type="text" name="vitB2"  class="idbar1"><br><br>
<div class="space">vit B6</div><div class="unit">mg</div> <input type="text" name="vitB6"  class="idbar1"><br><br>
<div class="space">vit B12</div> <div class="unit">mcg</div><input type="text" name="vitB12"  class="idbar1"><br><br>
<div class="space">나이아신</div> 
	<div class="unit">mg</div><input type="text" name="niacin"  class="idbar1"><br><br>
<div class="space">엽산</div>
	<div class="unit">mcg</div><input type="text" name="folicAcid"  class="idbar1"><br><br>
<div class="space">칼슘</div>
	<div class="unit">mg</div>
	<input type="text" name="calcium"  class="idbar1"><br><br>
<div class="space">철분</div> 
	<div class="unit">mg</div>
	<input type="text" name="iron"  class="idbar1"><br><br>
<div class="space">아연 </div>
	<div class="unit">mg</div>
	<input type="text" name="zinc"  class="idbar1"><br><br><br>

<input type="submit" value="입력" onClick="checkValue()" class="btn_submit"> <p></p>
				<input type="reset" value="취소" class="btn_reset">
												
 </form>
					  
					  </div>
						 				
        </header> 
		 <!-- Footer-->
         <footer>
		    
    <div class="footer_container">
      <div class="footer_text">
        <p class="m-0 text-center text-white">WAY<br> 회사소개 이용약관 개인정보취급처리방침 광고문의 관리자로그인<br><br>
          대표 : 정정정 | 이메일 : cs@way.com | 문의전화 : 02-0000-0000 <br>사업자등록번호 : 200-00-00000 통신판매업신고 : 2022-서울강남-00000 <br>주소 : 서울 강남구 XX동 XX로 11-77 Copyright © <br><br>way. All Rights Reserved.</p>
		 
      </div>
    </div>
				
    </footer>
		</form>
		  
</body>
	</html>