<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String id = (String)session.getAttribute("sid"); 

	int vitA = Integer.parseInt(request.getParameter("vitA"));
	int vitE = Integer.parseInt(request.getParameter("vitE"));
	int vitC = Integer.parseInt(request.getParameter("vitC"));
	int vitB1 = Integer.parseInt(request.getParameter("vitB1"));
	int vitB2 = Integer.parseInt(request.getParameter("vitB2"));
	int vitB6 = Integer.parseInt(request.getParameter("vitB6"));
	int vitB12 = Integer.parseInt(request.getParameter("vitB12"));
	int niacin = Integer.parseInt(request.getParameter("niacin"));
	int folicAcid = Integer.parseInt(request.getParameter("folicAcid"));
	int calcium = Integer.parseInt(request.getParameter("calcium"));
	int iron = Integer.parseInt(request.getParameter("iron"));
	int zinc = Integer.parseInt(request.getParameter("zinc"));
	
	int no=1;

	String DB_URL = "jdbc:mysql://localhost:3306/way";
	String DB_ID = "multi";
	String DB_PASSWORD = "abcd";	 

	Class.forName("org.gjt.mm.mysql.Driver");
	Connection con=DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String sql1 = "select max(no) from mem_nutri where memId=?";
	PreparedStatement pstmt1 = con.prepareStatement(sql1);
	pstmt1.setString(1,id);

	ResultSet res = pstmt1.executeQuery();

	if(res.next()){
		no=res.getInt("max(no)");
		no++;
	}


	String sql2 = "INSERT INTO mem_nutri VALUE (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt2 = con.prepareStatement(sql2);
	
	pstmt2.setString(1,id);
	pstmt2.setInt(2,no);
	pstmt2.setInt(3,vitA);
	pstmt2.setInt(4,vitE);
	pstmt2.setInt(5,vitC);
	pstmt2.setInt(6,vitB1);
	pstmt2.setInt(7,vitB2);
	pstmt2.setInt(8,vitB6);
	pstmt2.setInt(9,vitB12);
	pstmt2.setInt(10,niacin);
	pstmt2.setInt(11,folicAcid);
	pstmt2.setInt(12,calcium);
	pstmt2.setInt(13,iron);
	pstmt2.setInt(14,zinc);

	pstmt2.executeUpdate();
	
	int sum_vitA=0;
	int sum_vitE=0;
	int sum_vitC=0;
	int sum_vitB1=0;
	int sum_vitB2=0;
	int sum_vitB6=0;
	int sum_vitB12=0;
	int sum_niacin=0;
	int sum_folicAcid=0;
	int sum_calcium=0;
	int sum_iron=0;
	int sum_zinc=0;

	String sql3 = "SELECT * FROM mem_nutri WHERE memId=?"; 
	PreparedStatement pstmt3 = con.prepareStatement(sql3);
	pstmt3.setString(1, id);

	ResultSet rs=pstmt3.executeQuery();

	while(rs.next()){
		sum_vitA=sum_vitA+rs.getInt("vitA");
		sum_vitE=sum_vitE+rs.getInt("vitE");
		sum_vitC=sum_vitC+rs.getInt("vitC");
		sum_vitB1=sum_vitB1+rs.getInt("vitB1");
		sum_vitB2=sum_vitB2+rs.getInt("vitB2");
		sum_vitB6=sum_vitB6+rs.getInt("vitB6");
		sum_vitB12=sum_vitB12+rs.getInt("vitB12");
		sum_niacin=sum_niacin+rs.getInt("niacin");
		sum_folicAcid=sum_folicAcid+rs.getInt("folicAcid");
		sum_calcium=sum_calcium+rs.getInt("calcium");
		sum_iron=sum_iron+rs.getInt("iron");
		sum_zinc=sum_zinc+rs.getInt("zinc");
	}

	double per_vitA=sum_vitA/650.0*100;
	double per_vitE=sum_vitE/10.0*100;
	double per_vitC=sum_vitC/100.0*100;
	double per_vitB1=sum_vitB1/1.1*100;
	double per_vitB2=sum_vitB2/1.2*100;
	double per_vitB6=sum_vitB6/1.4*100;
	double per_vitB12=sum_vitB12/2.4*100;
	double per_niacin=sum_niacin/35.0*100;
	double per_folicAcid=sum_folicAcid/400.0*100;
	double per_calcium=sum_calcium/650.0*100;
	double per_iron=sum_iron/14.0*100;
	double per_zinc=sum_zinc/8.0*100;
%>
<html>
<head>
<title>????????? ?????? ??????</title>
	 <link href="css/styles.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
	
<script>
function checkValue(){
	if(input.vitA.value == ""){
		alert("?????????A??? ????????? ???????????????!");
		input.vitA.focus();
		return;
	}
	if(input.vitE.value == ""){
		alert("?????????E??? ????????? ???????????????!");
		input.vitE.focus();
		return;
	}
	if(input.vitB1.value == ""){
		alert("?????????B1??? ????????? ???????????????!");
		input.vitB1.focus();
		return;
	}
	if(input.vitB2.value == ""){
		alert("?????????B2??? ????????? ???????????????!");
		input.vitB2.focus();
		return;
	}
	if(input.vitB6.value == ""){
		alert("?????????B6??? ????????? ???????????????!");
		input.vitB6.focus();
		return;
	}
	if(input.vitB12.value == ""){
		alert("vitB12??? ????????? ???????????????!");
		input.vitB12.focus();
		return;
	}
	if(input.niacin.value == ""){
		alert("??????????????? ????????? ???????????????!");
		input.niacin.focus();
		return;
	}
	if(input.folicAcid.value == ""){
		alert("????????? ????????? ???????????????!");
		input.folicAcid.focus();
		return;
	}
	if(input.calcium.value == ""){
		alert("????????? ????????? ???????????????!");
		input.calcium.focus();
		return;
	}
	if(input.iron.value == ""){
		alert("?????? ????????? ???????????????!");
		input.iron.focus();
		return;
	}
	if(input.zinc.value == ""){
		alert("????????? ????????? ???????????????!");
		input.zinc.focus();
		return;
	}
	input.submit();
}
function inputFocus(){
	input.vitA.focus();
	return;
}
</script>
</head>

<body onLoad="inputFocus()" style="overflow-x:hidden; overflow-y:auto;">
?????? ????????? <%=id%>
	 <form>
			
      <div class="container1 px-4 px-lg-5">

  <div class="service"><a href="login.jsp">?????????</a>&nbsp;&nbsp; <a href="signup.jsp"> ????????????</a>&nbsp; &nbsp; ????????????</div>
</div>
       <nav class="navbar navbar-expand-lg navbar-light">
			
          <div class="container px-4 px-lg-5">
				
			  <div class="navbar-brand"  onclick='window.location.href = "index.html"'></div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					  <div class="dropdown">
          <a class="nav-link"  href="#">????????????</a>
                         </div>
                    
					  <div class="dropdown">
                        <a class="nav-link"  href="#" >??????</a>
						<div class="dropdown-content">
        <a href="#">Best</a>
        <a href="#">????????????</a>
							  <a href="signup.html">???????????????</a>
							 <a href="login.html">?????????</a>
      </div>
                      </div>    
                      <a class="nav-link" href="#">????????? ??????</a>
					
                      <a class="nav-link "  href="#" >?????????</a>
					
                           
                    </ul>
                  <div class="d-flex">
					  
                    <input type="search" class="btn img_bar" placeholder="???????????? ???????????????" >
                 
                 </div>
				  <div class="icon_user"></div>
					 <div class="icon_cart"></div>
            </div>
            </div>
        </nav>

<center>
<div class="footer_title01">????????? ???</div>
<!-- ????????? ????????? ?????? -->
<div style="width: 900px; height: 500px;">
	<!--????????? ????????? ??????-->
	<canvas id="myChart"></canvas>
</div>
<script type="text/javascript">
            var context = document
                .getElementById('myChart')
                .getContext('2d');
            var myChart = new Chart(context, {
                type: 'horizontalBar', // ????????? ??????
                data: { // ????????? ????????? ?????????
                    labels: [
                        'vitA','vitE','vitC','vitB1','vitB2','vitB6','vitB12','????????????','??????','??????','??????','??????'
                    ],
                    datasets: [
                        { //?????????
                            label: '???????????????', //?????? ??????
                            fill: false, // line ????????? ???, ??? ????????? ???????????? ???????????????
                            data: [
                                <%=per_vitA%>,<%=per_vitE%>,<%=per_vitC%>,<%=per_vitB1%>,<%=per_vitB2%>,<%=per_vitB6%>,<%=per_vitB12%>,<%=per_niacin%>,<%=per_folicAcid%>,<%=per_calcium%>,<%=per_iron%>,<%=per_zinc%> //y??? label??? ???????????? ????????? ???
                            ],
                            backgroundColor: [
                                //??????
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)',
								'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
								'rgba(255, 159, 64, 0.2)'
                         
                            ],
                            borderColor: [
                                //????????? ??????
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
								'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)',
								'rgba(255, 99, 132, 1)'
                            ],
                            borderWidth: 1 //????????? ??????
                        }/* ,
                        {
                            label: 'test2',
                            fill: false,
                            data: [
                                8, 34, 12, 24
                            ],
                            backgroundColor: 'rgb(157, 109, 12)',
                            borderColor: 'rgb(157, 109, 12)'
                        } */
                    ]
                },
                options: {
                    scales: {
                        yAxes: [
                            {
                                ticks: {
                                    beginAtZero: true
                                }
                            }
                        ]
                    }
                }
});
	
</script>
	</center>
	<header class=" py-6">
<div class="footer_title01">????????? ??????</div>
		<header class=" py-6">
	  <nav class="navbar navbar-expand-lg navbar-light">
			
          <div class="container px-4 px-lg-5">
<form name="result" method="post" action="" >
<table border="1" class="type03">
<tr bgcolor="#2E37B9" class="co" >
   <td>no</td> <!--?????? ???????????????--><td>?????????</td><td>vitA</td><td>vitE</td><td>vitC</td><td>virB1</td><td>vitB2</td>
<td>vitB6</td><td>vitB12</td><td>niacin</td><td>folicAcid</td><td>calcium</td><td>iron</td>
<td>zinc</td><td>??????</td><td>??????</td>
  </tr>
	<tr>
   <td>no</td> <!--?????? ???????????????--><td>?????????</td><td>vitA</td><td>vitE</td><td>vitC</td><td>virB1</td><td>vitB2</td>
<td>vitB6</td><td>vitB12</td><td>niacin</td><td>folicAcid</td><td>calcium</td><td>iron</td>
<td>zinc</td><td><a href="#" class="col_font">??????</a></td><td><a href="#" class="col_font">??????</a></td>
  </tr>
	<tr>
   <td>no</td><!--?????? ???????????????--><td>?????????</td><td>vitA</td><td>vitE</td><td>vitC</td><td>virB1</td><td>vitB2</td>
<td>vitB6</td><td>vitB12</td><td>niacin</td><td>folicAcid</td><td>calcium</td><td>iron</td>
<td>zinc</td><td><a href="#" class="col_font">??????</a></td><td><a href="#" class="col_font">??????</a></td>
  </tr>
</table>
	
</div>
			  </nav>
<!--
<%
	String sql4 = "SELECT * FROM mem_nutri WHERE memId=?"; 
	PreparedStatement pstmt4 = con.prepareStatement(sql4);
	pstmt4.setString(1, id);

	ResultSet rs4=pstmt4.executeQuery();

while(rs4.next()){
%>
<tr>
<td><%=rs4.getInt("no")%></td>
<td><%=rs4.getInt("vitA")%></td><td><%=rs4.getInt("vitE")%></td><td><%=rs4.getInt("vitC")%></td>
<td><%=rs4.getInt("vitB1")%></td><td><%=rs4.getInt("vitB2")%></td><td><%=rs4.getInt("vitB6")%></td>
<td><%=rs4.getInt("vitB12")%></td><td><%=rs4.getInt("niacin")%></td><td><%=rs4.getInt("folicAcid")%></td>
<td><%=rs4.getInt("calcium")%></td><td><%=rs4.getInt("iron")%></td><td><%=rs4.getInt("zinc")%></td>
<td><a href="#">??????</a></td><td><a href="#">??????</a></td>
</tr>
<% } %>
-->
</table><header class=" py-6">
<header class=" py-6">
<div class="footer_title01">????????? ?????? ?????? ??????</div>
	<header class=" py-6">

					  					  <header class=" py-6">
          
<div class="footer_title01">????????? ?????? ??????</div>
						<div class="container px-4 px-lg-5 mt-5">
							
												<div class="signUp1"><br>	
<form name="nutri" method="post" action="inputNutri.jsp">
	 <!--??????????????? --><div class="space">?????????</div><input type="text" name="pr_name"  class="idbar1">
<br><br> <!--???????????? ???????????????-->
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
<div class="space">????????????</div> 
	<div class="unit">mg</div><input type="text" name="niacin"  class="idbar1"><br><br>
<div class="space">??????</div>
	<div class="unit">mcg</div><input type="text" name="folicAcid"  class="idbar1"><br><br>
<div class="space">??????</div>
	<div class="unit">mg</div>
	<input type="text" name="calcium"  class="idbar1"><br><br>
<div class="space">??????</div> 
	<div class="unit">mg</div>
	<input type="text" name="iron"  class="idbar1"><br><br>
<div class="space">?????? </div>
	<div class="unit">mg</div>
	<input type="text" name="zinc"  class="idbar1"><br><br><br>

<input type="submit" value="??????" onClick="checkValue()" class="btn_submit"> <p></p>
				<input type="reset" value="??????" class="btn_reset">
				<p></p>
		</div>
										
					
						 	  </div>
					
        </header>
			  <!--?????? ???????????????-->	<div class="py-7"></div>		
    <!-- Footer-->
      
 <footer>
		    
    <div class="footer_container">
      <div class="footer_text">
        <p class="m-0 text-center text-white">WAY<br> ???????????? ???????????? ?????????????????????????????? ???????????? ??????????????????<br><br>
          ?????? : ????????? | ????????? : cs@way.com | ???????????? : 02-0000-0000 <br>????????????????????? : 200-00-00000 ????????????????????? : 2022-????????????-00000 <br>?????? : ?????? ????????? XX??? XX??? 11-77 Copyright ?? <br><br>way. All Rights Reserved.</p>
		 
      </div>
    </div>
				
    </footer>
</form>
</body>
	</html>