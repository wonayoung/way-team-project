<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String id = (String)session.getAttribute("sid"); 

	int no = Integer.parseInt(request.getParameter("no"));

	String DB_URL = "jdbc:mysql://localhost:3306/way";
	String DB_ID = "multi";
	String DB_PASSWORD = "abcd";	

	Class.forName("org.gjt.mm.mysql.Driver");
	Connection con=DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String sql1 = "SELECT * FROM mem_nutri WHERE memId=? AND no=?";
	PreparedStatement pstmt1 = con.prepareStatement(sql1);

	pstmt1.setString(1,id);
	pstmt1.setInt(2,no);
	
	ResultSet rs = pstmt1.executeQuery();

	rs.next();

	int vitA = rs.getInt("vitA");
	int vitE = rs.getInt("vitE");
	int vitC = rs.getInt("vitC");
	int vitB1 = rs.getInt("vitB1");
	int vitB2 = rs.getInt("vitB2");
	int vitB6 = rs.getInt("vitB6");
	int vitB12 = rs.getInt("vitB12");
	int niacin = rs.getInt("niacin");
	int folicAcid = rs.getInt("folicAcid");
	int calcium = rs.getInt("calcium");
	int iron = rs.getInt("iron");
	int zinc = rs.getInt("zinc");
	
%>

<html>
<head>
<meta charset="utf-8" />
<title>영양소 함량 입력</title>
	 <link href="css/styles.css" rel="stylesheet" />
	 <script type="text/javascript">
		function checkValue(){
			if(nutri.vitA.value == ""){
				nutri.vitA.value=0;
				//return;
			}
	if(nutri.vitE.value == ""){
			nutri.vitE.value=0;
			//return;
		}
	if(nutri.vitC.value == ""){
			nutri.vitC.value=0;
			//return;
		}
	if(nutri.vitB1.value == ""){
			nutri.vitB1.value=0;
			//return;
		}
	if(nutri.vitB2.value == ""){
			nutri.vitB2.value=0;
			//return;
		}
	if(nutri.vitB6.value == ""){
			nutri.vitB6.value=0;
			//return;
		}
	if(nutri.vitB12.value == ""){
			nutri.vitB12.value=0;
			//return;
		}
	if(nutri.niacin.value == ""){
			nutri.niacin.value=0;
			//return;
		}
	if(nutri.folicAcid.value == ""){
			nutri.folicAcid.value=0;
			//return;
		}
	if(nutri.calcium.value == ""){
			nutri.calcium.value=0;
			//return;
		}
	if(nutri.iron.value == ""){
			nutri.iron.value=0;
			//return;
		}
	if(nutri.zinc.value == ""){
			nutri.zinc.value=0;
			//return;
		}
	nutri.submit();
}
function inputFocus(){
	nutri.vitA.focus();
	return;
}
</script>
	
</head>

<body onLoad="inputFocus()" style="overflow-x:hidden; overflow-y:auto;">
			
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

<center>



	<header class=" py-6">

					  					  <header class=" py-6">
          
<div class="footer_title01">영양소 함량 입력</div>
						<div class="container px-4 px-lg-5 mt-5">
							
												<div class="signUp1"><br>	
<form name="nutri" method="post" action="nutriUpdateResult.jsp">
<input type="hidden" name="no" value="<%=no%>">
<div class="space">비타민A</div><div class="unit">mcg</div>
<input type="text" name="vitA" class="idbar1" value="<%=vitA%>"> 
<br><br>
<div class="space">비타민E</div> <div class="unit">mg</div>
<input type="text" name="vitE"  class="idbar1" value="<%=vitE%>">
<br><br>
<div class="space">비타민C </div><div class="unit">mg</div>
<input type="text" name="vitC"  class="idbar1" value="<%=vitC%>"><br><br>
<div class="space">비타민B1 </div><div class="unit">mg</div>
<input type="text" name="vitB1"  class="idbar1" value="<%=vitB1%>"><br><br>
<div class="space">비타민B2</div><div class="unit">mg</div>
<input type="text" name="vitB2"  class="idbar1" value="<%=vitB2%>"><br><br>
<div class="space">비타민B6</div><div class="unit">mg</div> 
<input type="text" name="vitB6"  class="idbar1" value="<%=vitB6%>"><br><br>
<div class="space">비타민B12</div> <div class="unit">mcg</div>
<input type="text" name="vitB12"  class="idbar1" value="<%=vitB12%>"><br><br>
<div class="space">나이아신</div> 
	<div class="unit">mg</div><input type="text" name="niacin"  class="idbar1" value="<%=niacin%>"><br><br>
<div class="space">엽산</div>
	<div class="unit">mcg</div><input type="text" name="folicAcid"  class="idbar1" value="<%=folicAcid%>"><br><br>
<div class="space">칼슘</div>
	<div class="unit">mg</div>
	<input type="text" name="calcium"  class="idbar1" value="<%=calcium%>"><br><br>
<div class="space">철분</div> 
	<div class="unit">mg</div>
	<input type="text" name="iron"  class="idbar1" value="<%=iron%>"><br><br>
<div class="space">아연 </div>
	<div class="unit">mg</div>
	<input type="text" name="zinc"  class="idbar1" value="<%=zinc%>"><br><br><br>

<input type="button" onClick="checkValue()" value="입력" class="btn_submit"> <p></p>
				<input type="reset" value="취소" class="btn_reset">
				<p></p>
		</form> </div>
										
						  </div>
						 
					
        </header>
<!-- Footer-->
       <footer>
          
    <div class="footer_container">
      <div class="footer_text">
        <p class="m-0 text-center text-white">WAY<br> <a href="company.html">회사소개</a> <a href="terms.html">이용약관</a> <a href="privacy.html">개인정보취급처리방침</a> <a href="advertisement.html">광고문의</a> <a href="managerLogin.html">관리자로그인</a><br><br>
          대표 : 정정정 | 이메일 : cs@way.com | 문의전화 : 02-0000-0000 <br>사업자등록번호 : 200-00-00000 통신판매업신고 : 2022-서울강남-00000 <br>주소 : 서울 강남구 XX동 XX로 11-77 Copyright © <br><br>way. All Rights Reserved.</p>
       
      </div>
    </div>
            
    </footer>

</body>
	</html>

	

