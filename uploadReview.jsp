<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ page import="com.oreilly.servlet.MultipartRequest" %>   
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>    
<%@ page import="java.io.File" %>         
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String saveDirectory=pageContext.getServletContext().getRealPath("/team2/img");
	
	File saveDir=new File(saveDirectory);
	
	if(!saveDir.exists()){
		saveDir.mkdirs();
	}
	
	int maxPostsize=1024*1024*5;
	String encoding="UTF-8";
	String reviewImg="";
	

	try{		
		MultipartRequest mr=new MultipartRequest(request, 
				saveDirectory, maxPostsize, encoding, new DefaultFileRenamePolicy());
		
		//id 받아오기
		String id = (String)session.getAttribute("sid");
		
		//폼전달받기
		String prdNo=mr.getParameter("prdNo");
		String name=mr.getParameter("name");
		String content=mr.getParameter("content"); 

		//file 받아오기
		Enumeration<String> files=mr.getFileNames();
		
		String file=String.valueOf(files.nextElement());
		reviewImg=mr.getFilesystemName(file);

		int star = Integer.parseInt(mr.getParameter("star"));
		String sex =mr.getParameter("sex");
		String ageGroup = mr.getParameter("ageGroup");
		//날짜 가져오기
		String date = new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
		
		//DB등록
		String DB_URL = "jdbc:mysql://localhost:3306/way";
		String DB_ID = "multi";
		String DB_PASSWORD = "abcd";	 

		Class.forName("org.gjt.mm.mysql.Driver");
		Connection con=DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);


		String sql = "insert into review values (?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,prdNo);
		pstmt.setString(2,id);
		pstmt.setString(3,name);
		pstmt.setString(4,content);
		pstmt.setString(5,reviewImg);
		pstmt.setInt(6,star);
		pstmt.setString(7,sex);
		pstmt.setString(8,ageGroup);
		pstmt.setString(9,date);

		pstmt.executeUpdate();

		pstmt.close();

		response.sendRedirect("viewDetailProduct.jsp?prdNo="+prdNo+"#2a");
		
	}catch(Exception e){
		System.out.println("에러가 발생했습니다. : "+e.getMessage());
	}

%>