<!-- 로그인 후의 메인 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- Link Swiper's CSS -->

<title></title>

	<!-- 모든 html에 폰트 적용을 위한 소스 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- 헤더고정 지우지 마세요 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
	
<link href="css/slick.css" rel="stylesheet" type="text/css"/>
<link href="css/styles.css" rel="stylesheet" type="text/css"/>
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
            <div class="dropdown"> <a class="nav-link"  href="healthconcerns.jsp?concerns">건강고민</a> </div>
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

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<div class="nutriGraph_banner">
		<div class="container px-4 px-lg-5">
  <div class="nutriGraph_title">
    <div class="nutriGraph_route">홈  >  권장량 계산</div>
  <br>일일 권장량 결과표<br><br><span class="nutriGraph_subtitle">입력한 영양소 함량을 비교 분석하여<br>
    일일 권장량과 함께 보여줍니다.</span></div></div>
 
</div>
<div class="numbers-counter container">
  <center>
    <div class="number_counter_sub">TYPE UP</div>
    <br>
    <div class="number_counter_title">우재현님의 분석 정리표</div><br>
	 <div class="nutriGraph_mytitle">여성 | 15세</div><br>
	</center>
  <div class="numbers-list">
    <ul>
    <li>
      <div class="stat-number">
        <span class="main-counter">			</span>
        <div class="number_counttitle">총 영양소 갯수</div>
       <span class="main-counter"> <span class="number-inc" data-max="14">0</span><span class="piece">개</span></span>
        <h4 class="stat-number-label">  
		2023.02.06기준</h4>
      </div>
      
    </li>
	  <div class="number_line"></div>
<li>
  <div class="stat-number">
    <div class="number_counttitle">권장량 초과</div>
    <span class="main-counter"><span class="number-inc" data-max="0">0</span><span class="piece">개</span></span>
    <h4 class="stat-number-label">일일 영양소 초과</h4>
    </div>
  
</li>
		  <div class="number_line"></div>
    <li>
      <div class="stat-number" style="color:#000099">
		  <div class="number_counttitle">권장량 미달</div>
        <span class="main-counter"><span class="number-inc" data-max="5">0</span><span class="piece">개</span></span>
        <h4 class="stat-number-label">일일 영양소 부족</h4>
      </div>
      
    </li>
  </ul>
  </div>
</div>
	 <!--그래프-->
<div class="chart_box">
	
	
	
	<div class="container px-4 px-lg-5">
		<center>
	  <div class="chart_box_title">ANALYSIS</div>  <br><div class="chart_box_subtitle">우재현님 일일 권장량 분석 결과</div></center>
	  <canvas id="myChart" width="1810" height="678" style="display: block; height: 452px; width: 1207px;" class="chartjs-render-monitor"></canvas>
   <canvas id="myChart1" width="1810" height="1778" style="display: block; height: 1678px; width: 1207px;" class="chartjs-render-monitor"></canvas>
<script src="js/chart.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
<script src="https://github.com/jedtrow/Chart.js-Rounded-Bar-Charts/blob/master/Chart.roundedBarCharts.js"></script>


  </div>
</div>
	
<script>
		  
var ctx = document.getElementById("myChart");
var mixedChart = new Chart(ctx, {
  type: 'bar',
	
  data: {
    labels: ['비타민A', '비타민E', '비타민C', '비타민B1', '비타민B2', '비타민B6', '비타민B12', '나이아신', '엽산', '칼슘', '철분', '아연', '오메가3', '루테인'],
    datasets: [
      {
        label: '우재현님의 섭취량',
        data: [1, 1,1 ,1 , 
			  1 , 1, 2, 1,1 ,1, 2, 1, 2,1 ],
        borderWidth: 1
		  ,
        borderColor: '#FFBB30',
        pointBackgroundColor: '#FFBB30',
        pointBorderColor: '#FFBB30',
        pointBorderWidth: 0,
		  
        // Changes this dataset to become a line
        type: 'line'
      },
      {
        label: '미달',
        data: [1, 1,1 ,1 , 
			  1 , 1, 2, 1,1 ,1, 2, 1, 2,1 ],
        //xAxisID : 'bar-axis',
        backgroundColor: '#000099',
      }, 
      {
        label: '적정',
        data: [10, 10 ,10, 20, 10, 10 , 10, 6, 10, 10 , 10, 6, 10, 6],
        //xAxisID : 'bar-axis-total',
        backgroundColor: '#8B8BFF',
      }
    ]
  },
  options: {
	  
        scales: {
            yAxes: [{
                stacked: false,
				 gridLines: {
        color: '#F0F0FF'
      },
                ticks: {
					  
					
                    beginAtZero: true,
                    max: 20,
                    min: 0
                }
            }],
            xAxes: [ 
            {
              stacked: true,
              id : 'bar-axis-total',
              barThickness: 14,
				 gridLines: {
        color: '#F0F0FF'},
            },
				
            
          ]
        }
    }
});


    </script>

<script>
		   // 모바일 버전
var ctx = document.getElementById("myChart1");
var mixedChart = new Chart(ctx, {
  type: 'horizontalBar', // 막대 변경
	
  data: {
    labels: ['비타민A', '비타민E', '비타민C', '비타민B1', '비타민B2', '비타민B6', '비타민B12', '나이아신', '엽산', '칼슘', '철분', '아연', '오메가3', '루테인'],
    datasets: [
      {
        label: '우재현님의 섭취량',
        data: [6, 2, 5, 9, 2, 6, 3, 6, 2, 6, 3, 6, 3, 6],
        borderWidth: 1
		  ,
        borderColor: '#FFBB30',
        pointBackgroundColor: '#FFBB30',
        pointBorderColor: '#FFBB30',
        pointBorderWidth: 0,
		  
        // Changes this dataset to become a line
        type: 'horizontalBar'
      },
      {
        label: '미달',
        data: [1, 1, 5, 7, 2, 6, 2, 3, 2, 6, 2, 3, 2, 3],
        //xAxisID : 'bar-axis',
        backgroundColor: '#000099',
      }, 
      {
        label: '적정',
        data: [1, 1 ,10, 20, 10, 10 , 1, 6, 10, 10 , 1, 6, 1, 6],
        //xAxisID : 'bar-axis-total',
        backgroundColor: '#8B8BFF',
      }
    ]
  },
	 // x y 변경함
  options: {
	 
        scales: {
            xAxes: [{
				
                stacked: false,
				 gridLines: {
					 
        color: '#F0F0FF'
      },
                ticks: {
					   padding: 5,
					
                    beginAtZero: true,
                    max: 20,
					
                    min: 0
                }
            }],
            yAxes: [ 
				
            {  
              stacked: true,
              id : 'bar-axis-total',
              barThickness: 14,
				 gridLines: {
        color: '#F0F0FF'},
            },
				
           
          ]
        }
    }
});


    </script>
	  <!--그래프 끝--> 
	<div class="container px-4 px-lg-5">
		<div class="numbers-counter">
		<center>
			
	  <div class="chart_box_title">ANALYSIS</div>  <br><div class="chart_box_subtitle">표로 분석 결과 확인하기</div>
					<button id="chart_table_btn"   class="ingredient btn09" type="radio" name="tab-group" 
   onclick='changeBtnName()'>나타내기</button>
			<div class="page">


</div>
			<div class="mainchart">
  <input type="radio" id="tab-1" name="show" checked/>
  <input type="radio" id="tab-2" name="show" />
  <input type="radio" id="tab-3" name="show" />
  
  <div class="tab">
    <label for="tab-1">전체보기</label>
    <label for="tab-2">제품1</label>
    <label for="tab-3">추가</label>
  
  </div>
  <div class="contentchat">
    <div class="content-dis">
     			<!--전체보기 표-->
<div class="data">
 <table width="auto" border="1px" class="chart_table_border">
  <tbody>
    <tr class="tr_bg">
      <th scope="col" class="chart_table_border1">영양소</th>
      <th scope="col" class="chart_table_border1">총 섭취량(%)</th>
      <th scope="col">상한 섭취량(%)</th>
    </tr>
    <tr class="tr_bg1">
      <td class="chart_table_border1">비타민A</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
      <td class="chart_table_border1">비타민E</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">비타민C</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
      <td class="chart_table_border1">비타민B1</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
      <td class="chart_table_border1">비타민B2</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">비타민B6</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">비타민B12</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">나이아신</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
      <td class="chart_table_border1">엽산</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">칼슘</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">철분</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">아연</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
	  <tr class="tr_bg1">
       <td class="chart_table_border1">오메가3</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
    </tr>
	  <tr class="tr_bg1">
       <td class="chart_table_border1">루테인</td
      <td class="chart_table_border1">&nbsp;</td>
      <td >&nbsp;</td>
   
    </tr>
  </tbody>
</table>

 
</div>
    </div>
    <div class="content-dis">
    
			<!--제품-->
<div class="data1">
 <table width="auto" border="1px" class="chart_table_border">
  <tbody>
    <tr class="tr_bg">
      <th scope="col" class="chart_table_border1">영양소</th>
      <th scope="col" class="chart_table_border1">총 섭취량(%)</th>
      <th scope="col" class="chart_table_border1">상한 섭취량(%)</th>
      <th scope="col" class="chart_table_border1">수정</th>
      <th scope="col">삭제</th>
    </tr>
    <tr class="tr_bg1">
      <td class="chart_table_border1">비타민A</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
      <td class="chart_table_border1">비타민E</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">비타민C</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
      <td class="chart_table_border1">비타민B1</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
      <td class="chart_table_border1">비타민B2</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
     <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">비타민B6</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">비타민B12</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">나이아신</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
     <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
      <td class="chart_table_border1">엽산</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
    <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">칼슘</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">철분</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
    <tr class="tr_bg1">
       <td class="chart_table_border1">아연</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
     <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
	  <tr class="tr_bg1">
       <td class="chart_table_border1">오메가3</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
	  <tr class="tr_bg1">
       <td class="chart_table_border1">루테인</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">&nbsp;</td>
      <td class="chart_table_border1">수정</td>
      <td >삭제</td>
    </tr>
  </tbody>
</table>

 
</div>
    </div>
    <div class="content-dis">
      
			<!--+-->
<div class="data2">
 <table width="auto" border="0px" >
  <tbody>
    <tr class="tr_bg2">
		<th scope="col" class="chart_table_border_title " width="10%" >제품명</th>
      <th scope="col" width="80%" ><input type="text" class="chart_table_border_input">
        </th>
		<th scope="col" width="10%" ></th>
    </tr>
	    
   
    <tr class="tr_bg2">
      <td class="chart_table_border_title">비타민E</td>
       <td><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mga-TE</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">비타민C</td>
        <td ><input type="text" class="chart_table_border_input"></td>
		
      <td class="chart_table_unit" >mg</td>
    </tr>
    <tr class="tr_bg2">
		 
      <td class="chart_table_border_title">비타민B1</td>
         <td ><input type="text" class="chart_table_border_input"></td>
		
      <td class="chart_table_unit">mg</td>
    </tr>
    <tr class="tr_bg2">
      <td class="chart_table_border_title">비타민B2</td>
         <td><input type="text" class="chart_table_border_input"></td>
		
      <td class="chart_table_unit">mg</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">비타민B6</td>
        <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mg</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">비타민B12</td>
       <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">ug</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">나이아신</td>
         <td><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mgNE</td>
    </tr>
    <tr class="tr_bg2">
      <td class="chart_table_border_title">엽산</td>
         <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">ug</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">칼슘</td>
       <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mg</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">철분</td>
       <td><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mg</td>
    </tr>
    <tr class="tr_bg2">
       <td class="chart_table_border_title">아연</td>
         <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">ug</td>
    </tr>
	  <tr class="tr_bg2">
       <td class="chart_table_border_title">오메가3</td>
         <td ><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mg</td>
    </tr>
	  <tr class="tr_bg2">
       <td class="chart_table_border_title">루테인</td>
         <td><input type="text" class="chart_table_border_input"></td>
      <td class="chart_table_unit">mg</td>
    </tr>
  </tbody>
</table><center>
	<input type="reset" value="취소" class="btn_reset2">
<input type="button" value="입력" onClick="checkValue()" class="btn_submit2">
				</center>
 
</div>
    </div>
   
     </div>
				 </div><script>
$('.mainchart').hide()
jQuery('#chart_table_btn').on('click',function(){
  jQuery('.mainchart').toggle();
})
			</script>   
	
<script>
	/**
 * Change the text of a button
 * @param {el} object HTMLElement: button to change text of
 * @param {dText} string: default text
 * @param {nText} string: new text
 **/
function changeText(el, dText, nText) {
  var content = '',
      context = '';
  
  /**
   * Set the text of a button
   *     - dependant upon current text
   **/
  function setText() {
    return (content === dText) ? nText : dText;
  }
  
  /* Check to see if the browser accepts textContent */
  if ('textContent' in document.body) {
    context = 'textContent';
    /* Get the current button text */
    content = el[context];
  /* Browser does NOT use textContent */
  } else {
    /* Get the button text with fallback option */
    content = el.firstChild.nodeValue;
  }
  
  /* Set button text */
  if (context === 'textContent') {
    el.textContent = setText();
  } else {
    el.firstChild.nodeValue = setText();
  }
}

var defaultText,
    substituteText,
    btn;

/* Default text of the button */
defaultText = '나타내기';
/* Alternate text for button */
substituteText = '숨기기';
/* Grab our button */
btn = document.querySelector('.btn09');

/* Add a listener to the button instance so we can manipulate it */
btn.addEventListener('click', function() {
  changeText(this, defaultText, substituteText);
}, false);

			</script>   
			
			
			</center>
	</div></div>
	<div class="container px-4 px-lg-5">

<div class="numbers-counter">
	<div class="efficacy">적정 권장량 섭취 시 이런 효능이 있어요.<br><br><input type="button" class="ingredient" value="#오메가3">
	<div class="efficacy_text">혈중 중성지질 개선에 도움을 주고, 혈행 개선, 기억력 개선 및 건조한 눈에도 효과적이다. 오메가3는 우리 몸에 좋은 불포화 지방으로 EPA와 DHA를 일컫는 말이다. 여기서 EPA는 콜레스테롤 수치를 낮추어 혈행 개선을 해주고, DHA는 두뇌와 망막의 구성 성분이다.</div></div>
<div class="content">
  <div class="load-wrapp1">
      <div class="load-1">
       <p>효과 1</p>
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
      </div>
    </div>
    <div class="load-wrapp1">
      <div class="load-2">
       <p>효과 1</p>
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
      </div>
    </div>
     <div class="clear"></div>
    <div class="load-wrapp1">
      <div class="load-3">
      <p>효과 1</p>
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
      </div>
    </div>
    <div class="load-wrapp1">
      <!-- Loading 4 don't work on firefox because of the border-radius and the "dashed" style. -->
      <div class="load-4">
        <p>효과 1</p>
        <div class="ring-1"></div>
      </div>
  </div></div></div></div>
	
	
  	<div class="container px-4 px-lg-5">
</div>

	<div class="container px-4 px-lg-5">
	  <div class="numbers-counter"><div class="recommended_sub">추천</div>
		  
<div class="highly_recommended"> 이런 영양제를 섭취해 보는 건 어떨까요?</div>
<br><br><input type="button" class="ingredient" value="#오메가3">
<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
      <div class="col mb-5">
          <div class="card h-100"> 
            <!-- Product image--> 
            <a href="viewDetailProduct.jsp?prdNo=calcium_002"><img src="images/image/omega3_001_main.jpg" class="card-img-top" id="card-img-top-h"  ></a> 
            <!-- Product details-->
            <div class="card-body p-4">
              <div class="text-center"> 
                <!-- Product name--> 
                <a href="viewDetailProduct.jsp?prdNo=calcium_002">
                <h5 class="fw-bolder">리얼그램 비건 식물성 rTG 오메가3 </h5>
                </a>
                <div class="fw-bolder1">
                  <div class="money">85,000원</div>
                  <span class="money_sell">42,500원</span> </div>
                <!-- Product price--> 
                
              </div>
            </div>
          </div>
      </div>
	    </div>
</div></div>
<div class="container px-4 px-lg-5">

<div class="numbers-counter">
	<div class="efficacy1"> 권장량 초과 섭취 시<br> 이런 부작용이 발생할 수 있어요.<br><br><input type="button" class="ingredient" value="#아연">
	<div class="efficacy_text">  메스꺼움, 구토 및 설사를 일으킬 수 있습니다. 산화 아연 연무를 흡입하면 빠른 호흡, 발한, 열이 발생하고 입에서 금속 맛이 날 수 있습니다</div></div>
<div class="content">
  <div class="load-wrapp1">
      <div class="load-1">
       <p>효과 1</p>
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
      </div>
    </div>
    <div class="load-wrapp1">
      <div class="load-2">
       <p>효과 1</p>
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
      </div>
    </div>
     <div class="clear"></div>
    <div class="load-wrapp1">
      <div class="load-3">
      <p>효과 1</p>
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
      </div>
    </div>
    <div class="load-wrapp1">
      <!-- Loading 4 don't work on firefox because of the border-radius and the "dashed" style. -->
      <div class="load-4">
        <p>효과 1</p>
        <div class="ring-1"></div>
      </div>
  </div></div></div></div>

	<div class="container px-4 px-lg-5">
	  <div class="numbers-counter"><div class="recommended_sub">추천</div>
		  
<div class="highly_recommended">이런 영양제로 바꿔보는 건 어떨까요?</div>
<br><br><input type="button" class="ingredient" value="#아연">
<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
      <div class="col mb-5">
          <div class="card h-100"> 
            <!-- Product image--> 
            <a href="viewDetailProduct.jsp?prdNo=calcium_002"><img src="images/image/calcium_002_main.jpg" class="card-img-top" id="card-img-top-h"  ></a> 
            <!-- Product details-->
            <div class="card-body p-4">
              <div class="text-center"> 
                <!-- Product name--> 
                <a href="viewDetailProduct.jsp?prdNo=calcium_002">
                <h5 class="fw-bolder">더 리얼 칼슘 마그네슘
                  아연 앤 비타민D </h5>
                </a>
                <div class="fw-bolder1">
                  <div class="money">22,900원</div>
                  <span class="money_sell">22,900원</span> </div>
                <!-- Product price--> 
                
              </div>
            </div>
          </div>
      </div>
	    </div>
</div></div>
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
