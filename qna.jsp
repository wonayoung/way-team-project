<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>         
<html>
   <head>
   <title>게시판 리스트 보기</title>
    
        <link href="css/styles.css" rel="stylesheet" />
    
   </head>      

   <%
       String DB_URL="jdbc:mysql://localhost:3306/project";  
       String DB_ID="multi";  
       String DB_
	  PASSWORD="abcd"; 
 	 
	   Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		request.setCharacterEncoding("euc-kr");

		String group_index;
		int list_index;

		group_index = request.getParameter("group_index");
		//첫 페이지는 group_index 값이 0
		   
		if (group_index != null) 	
				list_index = Integer.parseInt(group_index);  
		else 
				list_index = 0;     //현재 페이지 수 

		//board 테이블에 있는 총 자료의 수(글의 개수) 알아 오기
		String jsql = "select count(*) from board";
		PreparedStatement pstmt1 = con.prepareStatement(jsql);
		ResultSet cntRs = pstmt1.executeQuery();	

		cntRs.next();
		int cnt = cntRs.getInt(1);//글의 총 개수

		//한 페이지에 20개의 글 출력하기 위해
		//글의 개수를 20으로 나누어 페이지 계산
		int cntList = cnt/20; // 페이지 수 계산하기 위한 변수 
		int remainder = cnt%20; //나머지
		int cntList_1;//총페이지 수
			
		//1(21, 41, 61, 81, ...)번째 글이 올라올 때 총 페이지 수 1 증가
		if (cntList != 0) //글이 20개이상이면
		{
			   if (remainder == 0)	 //20으로 나눈 나머지가 없으면		
				  cntList_1 = cntList;  //몫이 페이지 수          
			   else                    //나머지가 있으면
				   cntList_1 = cntList + 1; //몫에 1 더한 값이 총페이지 수		  
		 } 
		 else 		 
			  cntList_1 = cntList + 1; //총페이지 수		
			   
		cntRs.close();
			
		String jsql2 = "select * from board order by masterid desc, replynum, step, no";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
		ResultSet rs = pstmt2.executeQuery();
   %>
  
<body>
	   <div class="container1 px-4 px-lg-5">

  <div class="service"><a href="login.jsp">로그인</a>&nbsp;&nbsp; <a href="signup.jsp"> 회원가입</a>&nbsp; &nbsp; 고객센터</div>
</div>
        <nav class="navbar navbar-expand-lg navbar-light">
			
          <div class="container px-4 px-lg-5">
				
                <div class="navbar-brand"></div>
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

     
 <header class=" py-5">
          
			
	 
					<div class="container px-4 px-lg-5">
	
<div class="container">
    <div class="menu_01">
<div class="menu_target">고객센터</div>
				
<br>
<div class="left_menu_bar"><a>공지사항</a> <br>
				<a>자주 묻는 질문</a>
				<br>
				<a>1:1 문의</a>
	  </div>
    </div>
</div>
								
<div class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-2 row-cols-xl-1 justify-content-center">
<div class="col mb-5">
                
					<div class="inquiry">자주 묻는 질문</div>
<hr class="hr_username1"><p class="blank"></p>
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

<font face="맑은 고딕"><span style="font-size:10pt;">결제 확인시간 11시 전일 경우 당일 주문건으로 처리되어 2~5일(주말제외),
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
<div class="pagination">
                           
               <a href="#url" class="prev"><<li class="fa-light fa-angle-left"></li></a>
                         <ul class="num_list">
                <li class="on"><a href="#url" class="first">1</a></li>           </ul>
                            <a href="#url" class="next">><li class="fa-light fa-angle-right"></li></a> 
               </div>


</div>
			</div>
	   </div>

<header class=" py-6"></header>
				

<!-- Footer-->
       <footer>
          
    <div class="footer_container">
      <div class="footer_text">
        <p class="m-0 text-center text-white">WAY<br> <a href="company.html">회사소개</a> <a href="terms.html">이용약관</a> <a href="privacy.html">개인정보취급처리방침</a> <a href="advertisement.html">광고문의</a> <a href="managerLogin.html">관리자로그인</a><br><br>
          대표 : 정정정 | 이메일 : cs@way.com | 문의전화 : 02-0000-0000 <br>사업자등록번호 : 200-00-00000 통신판매업신고 : 2022-서울강남-00000 <br>주소 : 서울 강남구 XX동 XX로 11-77 Copyright ⓒ <br><br>way. All Rights Reserved.</p>
       
      </div>
    </div>
            
    </footer>
		
		  
</body>
	</html>
