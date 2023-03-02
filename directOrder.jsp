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
    
        <title></title>
		
        <!-- Favicon-->
        	<!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
        <link href="css/styles.css" rel="stylesheet" />
		<!--
		<script type="text/javascript" src="js_way.js">
		</script>
		-->
		<script>
function notLogin()
{
	var prdNo = document.getElementById('prdNo').innerText;
	var con = confirm("로그인 후 이용 가능합니다. 로그인 페이지로 이동하시겠습니까?");
	if(con==true){
		location.href="login.html";
		return true;
	}
	else if(con==false){
		location.href="viewDetailProduct.jsp?prdNo="+prdNo;
		return true;
	}
}
function sameInformation()    //체크시 구매자 정보와 동일하게 처리
{
  var sameInfo = document.getElementById("info");
  var isChecked = sameInfo.checked;
  
  if(isChecked){
	  document.orderInfo.name.value = document.orderInfo.memName.value;
	  document.orderInfo.phone.value = document.orderInfo.memPhone.value;
	  document.orderInfo.postcode.value = document.orderInfo.memPost.value;
	  document.orderInfo.addr.value = document.orderInfo.memAddr.value;
	  document.orderInfo.detail.value = document.orderInfo.memDetail.value;
	  document.orderInfo.extra.value = document.orderInfo.memExtra.value;
  }
  else{
	  document.orderInfo.name.value = "";
	  document.orderInfo.phone.value = "";
	  document.orderInfo.postcode.value = "";
	  document.orderInfo.addr.value = "";
	  document.orderInfo.detail.value = "";
	  document.orderInfo.extra.value = "";
  }
  return;
}

function checkOrderInfo()		//주문페이지 유효성 검사
{
	if(document.orderInfo.name.value == "")   
    {
		alert("수령인을 입력해 주세요!");  
		document.orderInfo.name.focus();					
		return;
	}
	if(document.orderInfo.addr.value == "")   
    {
		alert("주소를 입력해 주세요!");  
		document.orderInfo.addr.focus();					
		return;
	}
	if(document.orderInfo.phone.value == "")   
    {
		alert("연락처를 입력해 주세요!");  
		document.orderInfo.phone.focus();					
		return;
	}

	if(document.orderInfo.used.value == ""){
			document.orderInfo.used.value=0;
		}

	var agree = document.getElementById("agree");
	var isAgree = agree.checked;

	if(!isAgree){
		alert("구매 진행에 동의해주세요!");
		return;
	}

	orderInfo.submit();
}
//적립금
	function chkPoint(total,usable) {
		//total : 최초 결제 금액 / usable : 사용가능,남은 포인트
		var v_point = 0; //사용할 포인트 (input 입력값)
	
		if (document.getElementById("chk_use").checked)  
		{
			v_point = usable; //사용할 포인트

			if(usable > total ){ //결제금액보다 포인트가 더 클 때
				v_point = total; //사용할 포인트는 결제금액과 동일하게 설정
			}
			
		}
		document.getElementById("use_pnt").value = v_point; //input 값 설정

		changePoint(total,usable);
	}
	
	function changePoint(total,usable){
		//input값을 가져옴 > left_pnt 변경 > 최종결제금액 변경
		//total : 최초 결제 금액 / usable : 사용가능,남은 포인트 
		var v_point = parseInt(document.getElementById("use_pnt").value); //사용할 포인트 (input 입력값)
		if (v_point > usable) //입력값이 사용가능 포인트보다 클때
		{
			v_point = usable;
			document.getElementById("use_pnt").value = v_point; //input 값 재설정
		}

		if(v_point > total ){ //결제금액보다 포인트가 더 클 때
			v_point = total; //사용할 포인트는 결제금액과 동일하게 설정
			document.getElementById("use_pnt").value = v_point; //input 값 재설정
		}


		var v_left = document.getElementsByName("left_pnt"); //사용가능 포인트, 남은 포인트 값 설정
		for (var i = 0; i < v_left.length; i++) {

			v_left[i].innerHTML = usable - v_point; //= 전체 포인트 중에 사용할 포인트빼고 남은 포인트

		}
		document.getElementById("result_pnt").innerHTML = total - v_point; //최종 결제금액 = 결제금액 - 사용할 포인트
		document.orderInfo.pay.value = total - v_point;
		document.getElementById("showReserves").innerHTML = ((total - v_point)*0.01).toFixed();//최종 적립액
		document.orderInfo.reserves.value = ((total - v_point)*0.01).toFixed();
	}
  
		</script>
    </head>

			
        <%
	String id = (String)session.getAttribute("sid");
	
	if(id!=null)
	{
%>
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

				  <header class=" py-5">
          
			
					<div class="container px-4 px-lg-5">
							<div class="footer_title02">주문결제</div>
						<!--글자 색상 추가하였습니다-->
<div class="footer_title03"><span style="color: #707070"> 장바구니<span style="color: #000099">>주문결제</span>>주문완료</span></div>
					 <div class="cart_list">
					  					<div class="px-4 mt-5">

<br><br>   
											<span class="checkboxfont1">주문내역</span><p>


<table border=0 class="table_border" style="font-size:10pt;font-family:맑은 고딕">
<tr>       
   <td  width = "20%" height="30" align="center"  class="order_con05"><p align="center"><font size="2" color="#ECFAE4"><strong>상품이미지</strong></font></td>       
   <td width = "20%" height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>상품명</strong></font></td>       
   <td  width = "20%" height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>상품단가(원)</strong></font></td>       
   <td  width = "20%"height="30" align="center" class="order_con05"><p><font  size="2" color="#ECFAE4"><strong>주문수량(개)</strong></font></td>     
   <td   width = "10%" height="30" align="center" class="order_con05"><p><font size="2" color="#ECFAE4"><strong>주문액(원)</strong></font></td>  
    <td   width = "10%" height="30" align="center" class="order_con05"><p><font size="2" color="red"><b>비 고</b></font></td>
 </tr> 		

 <%

	String DB_URL="jdbc:mysql://localhost:3306/way";
    String DB_ID="multi"; 
    String DB_PASSWORD="abcd";
 	 
	Class.forName("org.gjt.mm.mysql.Driver");  
 	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	 String ctNo = session.getId();   

	 String jsql5 = "delete from tempcart where ctNo=?";    
	 PreparedStatement pstmt5 = con.prepareStatement(jsql5);
	 pstmt5.setString(1, ctNo);
	
     pstmt5.executeUpdate();
    
	 String pNo = request.getParameter("prdNo");  
	 
	 int price = Integer.parseInt(request.getParameter("price"));

	 String jsql6 = "select prdName, salePrice from product where prdNo = ?";
     PreparedStatement pstmt6 = con.prepareStatement(jsql6);
	 pstmt6.setString(1, pNo);

	 ResultSet rs6 = pstmt6.executeQuery(); 
	 rs6.next();

	 String	prdName =  rs6.getString("prdName");	  
	 int salePrice =  rs6.getInt("salePrice");  

	 int qty=1;
	 if(price==(int)(salePrice*2*0.95))
		qty=2;
	 else if(price==(int)(salePrice*4*0.93))
		qty=4;
	 else if(price==(int)(salePrice*6*0.90))
		qty=6;

	 String jsql = "insert into tempcart (ctNo, prdNo, ctQty) values (?,?,?)";  
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1,ctNo);
	 pstmt.setString(2,pNo);
	 pstmt.setInt(3,qty);	

	 pstmt.executeUpdate();

	 String jsql1 = "select prdNo, ctQty from tempcart where ctNo = ?";   //  tempcart 테이블을 사용함에 유의!
	 PreparedStatement pstmt1 = con.prepareStatement(jsql1);
	 pstmt1.setString(1, ctNo);		

	 ResultSet rs1 = pstmt1.executeQuery(); 
		
	  

	 rs1.next(); 

	 String prdNo = rs1.getString("prdNo");	    //  tempcart 테이블로부터 상품번호 추출
   	 int ctQty = rs1.getInt("ctQty");	                    //  tempcart 테이블로부터 주문수량 추출 

   	              
	 
	 int reserves=0;//적립금  
	 int total = 0;
	 
	 if((ctQty%2)==0){
			total=(ctQty/6)*(int)(salePrice*6*0.90)+((ctQty%6)/4)*(int)(salePrice*4*0.93)+(((ctQty%6)%4)/2)*(int)(salePrice*2*0.95);
		}
	 else{
			total=(ctQty/6)*(int)(salePrice*6*0.90)+((ctQty%6)/4)*(int)(salePrice*4*0.93)+(((ctQty%6)%4)/2)*(int)(salePrice*2*0.95)+salePrice;
		}
		
		if(total<50000){
			reserves=(int)(total*0.01);// 5만원 이하인 경우 배송비 더하기 전 금액 적립
			total=total+3000;
		}

		reserves=(int)(total*0.01);

%>
<div id="prdNo" style="display: none;"><%=pNo%></div>
 <tr>       
    <td  height="200" align="center"><font size="2"><img src="prdImages\<%=prdNo%>_main.jpg" class="card-img-top" /></font></td>     
	<td   height="200"align="center"><font size="2"><%=prdName%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=salePrice%></font></td> 
	<td  height="200"align="center" align=right><font size="2"><%=ctQty%></font></td>
    <td  height="200"align="right"><font size="2"><%=total%> 원</font></td>  
    <td  height="200"align="center"><a href="deleteCart.jsp?prdNo=<%=prdNo%>"><b>삭제</b></a></td> 	
  </tr>   


  <tr>
	<td colspan = 4 align=center class="order_total"><b>전체 주문총액</b></td>
	<td class="order_total" height="30" align=right><font size="2" color="red"><b><%=total%> 원</b></font></td>
	<td  class="order_total" align=center>(선택물품 총합)</td>
  </tr>
 </table>   


<%
	String jsql3 = "select memName, memPhone, memPost, memAddr, memDetail, memExtra from member where memId = ?";
	PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	pstmt3.setString(1,id);

	ResultSet rs3 = pstmt3.executeQuery();
	rs3.next();
	String name = rs3.getString("memName");
	String phone = rs3.getString("memPhone");
	String postcode = rs3.getString("memPost");
	String addr = rs3.getString("memAddr");
	String detail = rs3.getString("memDetail");
	String extra = rs3.getString("memExtra");
%>   

                    <!-- //order_cart_tit -->

                   

              </div>
						
 
				
               

						<header class=" py-5">
						</header>
          <!-- //order_cart_tit -->

                    <div class="order_table_type">
					<form name="orderInfo" method="post" action="directOrderOk.jsp">
                        <table>
                      
                            <thead>
                            <tr>
							<input type="hidden" name="memName" value="<%=name%>">
							<input type="hidden" name="memPhone" value="<%=phone%>">
							<input type="hidden" name="memPost" value="<%=postcode%>">
							<input type="hidden" name="memAddr" value="<%=addr%>">
							<input type="hidden" name="memDetail" value="<%=detail%>">
							<input type="hidden" name="memExtra" value="<%=extra%>">
                              <th colspan="6" class="checkboxfont1">배송정보  <input type="checkbox" id="info" onClick="sameInformation()">
							  <span class="same">회원 정보와 동일</span></th>  
							
                              
                              <th>
                                 
                            </thead>
								 
                            <tbody class="td_padding1">

                            <tr>
                                
                                <td colspan="6"  class="td_left">
  <!--수령인 placeholder와 class를 수정하였습니다-->
                                       
								 <div class="signUp8"><br>				
					    <div class="inputtitle">수령인*</div> <input type="text" name="name" class="inputtext" placeholder="수령인 이름을 입력하세요">
			<div class="inputtitle">주소*</div>
				<input type="text" name="postcode" id="sample6_postcode" class="idbarAddress" placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()" class="idbutAddress" value="우편번호 찾기"><br><br>
				<input type="text" name="addr" id="sample6_address" class="inputtext" placeholder="주소"><br><br>
				<input type="text" name="detail" id="sample6_detailAddress"  class="inputtextAddress" placeholder="상세주소">
				<input type="text" name="extra" id="sample6_extraAddress"  class="inputtextAddress2" placeholder="참고항목"><br><br>

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
<div class="inputtitle">연락처* </div>
<input type="text" name="phone" class="inputtext"  placeholder="연락처를 입력해주세요"><br>
									  <!--요청사항*를 빼고 placeholde 추가하였습니다-->
<div class="inputtitle">요청사항 </div>
<input type="text" name="request" class="inputtext" placeholder="요청사항을 입력해주세요"><br>

				</div>
                                       
                                  <td> </td>  
							  </td>
                                        
<td>
                                           

                                       
            
                                        
         </td>
                              
								
							
								
                                    
                             
                            </tr>

                            </tbody>


                        </table>
                    </div>
<!--적립금 사용-->
<%
	String jsql4 = "select reserves from reserves where memId = ?";
	PreparedStatement pstmt4 = con.prepareStatement(jsql4);
	pstmt4.setString(1,id);

	ResultSet rs4 = pstmt4.executeQuery();
	int usable=0;//사용가능 적립금
	while(rs4.next())
	{
		usable = usable+rs4.getInt("reserves");
	}
%>   
<div class="order_table_type">
                        <table>
                      
                            <thead>
                            <tr>
                                
                                  <th colspan="6" class="checkboxfont1">적립금 사용</th>  
                               
                              
                              <th>
                                 
                            </thead>
								 
                            <tbody class="td_padding">

                            <tr>
                              <td colspan="6" class="td_left">
                                <div class="order_signUp8"><br>			
                                                   
                             <div class="inputtitle">적립금</div>
                                
                             <span> <input type="number" name="used" id="use_pnt"  class="inputtext" max="<%=usable%>" onchange="changePoint(<%=total%>,<%=usable%>)"></span> 원  
                               
                             <br>
                             사용가능 적립금 : <span name="left_pnt"  class="font_color"><%=usable%></span><span class="font_color">원</span> <span><input type="checkbox" id="chk_use"  onclick="chkPoint(<%=total%>,<%=usable%>)"><span class="same">적립금 사용</span></span><br>
                             <span> ( 남은 적립금 : </span><span name="left_pnt" id="left_pnt"  class="font_color"><%=usable%></span><span class="font_color">원 </span> ) 	 </div>
                                                                    
                                                               </td>
                  
  	




    </tr>
  

				</div></div>
                                       
                                   
							  </td>
                                            
<td>
                                            <!-- //icon_pick_list -->

                                       
                                        
         </td>
                                 
                            </tr>

                            </tbody>


                        </table>
                    </div>
<!--적립금 끝-->
					
          <!-- //order_cart_tit -->

                    <div class="order_table_type">
                        <table>
                      
                            <thead>
                            <tr>
                                
                                  <th colspan="6" class="checkboxfont1">결제 수단 선택</th>  
                               
                              
                              <th>
                                 
                            </thead>
								 
                            <tbody class="td_padding">

                            <tr>
                                
                                <td colspan="6"  class="td_left">
  
                                       
								 <div class="order_signUp8"><br>				
					     <div class="inputtitle">결제수단</div>
<input type="radio" name="payment" value="신용카드" checked>
<span style="color: #707070">신용카드</span>
<input type="radio" name="payment" value="무통장입금" >
<span style="color: #707070">무통장입금</span>
<br>
				
                <div class="inputtitle" >은행명</div>
									 <select name="bank" class="inputtext">
									 <option value="국민은행">국민은행</option>
									  <option value="우리은행">우리은행 </option>
									  <option value="NH농협은행">NH농협은행 </option>
									  </select>

<div class="inputtitle" >카드번호</div>
									 <!--placeholder 추가했습니다-->
<input name="cardNo" type="text" class="inputtext" placeholder="카드 번호를 입력해주세요"><br>
<div class="inputtitle">카드 비밀번호</div>
									  <!--placeholder 추가했습니다-->
<input name="cardPw" type="password" class="inputtext" placeholder="카드 비밀번호를 입력해주세요"><br>

				</div>
                                       
                                   
							  </td>
                                            
<td>
                                            <!-- //icon_pick_list -->

                                       
            
                                        
         </td>
                              
								
							
								
                                    
                             
                            </tr>

                            </tbody>


                        </table>
                    </div>

               
<div class="price_sum_list">
                        <div>
                         
                          
                            <span class="font_color_b" >최종 결제 금액
                            <span style="color: #000099" id="result_pnt"><%=total%>원</span></span>
							<input type="hidden" name="pay" value="<%=total%>">
                </div>
                  </div>

                        <div>
                         
                          <div class="point_sum_list">
                            <span class="font_color_b" style="color: #000099">예상 적립금
                            <span style="color: #000099" id="showReserves"><%=reserves%>원</span></span>
							<input type="hidden" name="reserves" value="<%=reserves%>">
                       		<header class=" py-5">		</header>
                    </div>
                  
							 </div>	
         </div>	
                      
                    </div>
                      </div>
                    
		<header class=" py-5">
						</header>
				<!--확인정보와 주문하기 버튼을 추가 기재하였습니다-->
			<center>
        <div class="check_01">  <input type="checkbox" id="agree">결제정보를 확인하였으며, 구매진행에 동의합니다.</div>  
				     <button type="button" class="btn_order_choice_buy1" onclick="checkOrderInfo()">주문하기</button></center>
				</form>
<header class=" py-5">
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
		
    <script src="js/chat.js"></script> 
    <script src="js/top.js"></script> <!-- top버튼 생성-->
    <script src="js/autonav.js"></script> <!-- 헤더 고정-->
    <script src="js/autoslide.js"></script> 
    <script src="button.js"></script> <!--모바일 메뉴-->
</body>
	</html>