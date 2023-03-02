<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
		<!--
		<script type="text/javascript" src="js_way.js">
		</script>
		-->
		<script>
function notLogin()
{
	var prdNo = document.getElementById('prdNo').innerText
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

		</script>
</head>
<%
	String id = (String)session.getAttribute("sid");
	String no = request.getParameter("prdNo");

	if(id==null)
	{
%>
<body onload="notLogin()">
<div id="prdNo" style="display: none;"><%=no%></div>
<%
	}
else
	{
 	 String DB_URL="jdbc:mysql://localhost:3306/way";   
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 int price = Integer.parseInt(request.getParameter("price"));

	 String sql1 = "select salePrice from product where prdNo=?";
	 PreparedStatement pstmt1 = con.prepareStatement(sql1);
	 pstmt1.setString(1, no);

	 ResultSet rs1 = pstmt1.executeQuery();

	 rs1.next();
	 int salePrice = rs1.getInt("salePrice");

	 int qty=1;
	 if(price==(int)(salePrice*2*0.95))
		qty=2;
	 else if(price==(int)(salePrice*4*0.93))
		qty=4;
	 else if(price==(int)(salePrice*6*0.90))
		qty=6;
	
	 String sql2 = "select * from cart where memId = ? and prdNo = ?";
	 PreparedStatement pstmt2 = con.prepareStatement(sql2);
	 pstmt2.setString(1, id);
	 pstmt2.setString(2, no);
	 ResultSet rs2 = pstmt2.executeQuery(); 

	 if(rs2.next())  // 동일 상품이 이미 장바구니에 존재한다면 수량만을 추가시킴.
		{		               // 즉, update문을 사용하여 이미 존재하는 상품데이터의 수량부분만을 갱신시킴.
			int sum = rs2.getInt("ctQty") + qty;  //  이미 기존에 있는 수량에다 새로 추가시킬 수량을 합산함.

			String sql3 = "update cart set ctQty=? where memId=? and prdNo=?";
			PreparedStatement pstmt3 = con.prepareStatement(sql3);
			pstmt3.setInt(1, sum);
			pstmt3.setString(2, id);
			pstmt3.setString(3, no);

			pstmt3.executeUpdate();

			pstmt3.close();
		}
		else  // 동일 상품이 장바구니에 존재하지 않는다면, 새로운 상품레코드를 장바구니 테이블에 추가시킴
		{
			String sql4 = "insert into cart values (?,?,?)";
			PreparedStatement pstmt4 = con.prepareStatement(sql4);
			pstmt4.setString(1,id);
			pstmt4.setString(2,no);
			pstmt4.setInt(3,qty);	

			pstmt4.executeUpdate();

			pstmt4.close();
		}

		response.sendRedirect("showCart.jsp");
%>
	
<body>
<%
	}
/*
rs2.close();
pstmt2.close();
rs1.close();
pstmt1.close();
con.close();
*/
%>

</body>
</html>