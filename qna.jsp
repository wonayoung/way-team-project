<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>         
<html>
   <head>
   <title>�Խ��� ����Ʈ ����</title>
    
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
		//ù �������� group_index ���� 0
		   
		if (group_index != null) 	
				list_index = Integer.parseInt(group_index);  
		else 
				list_index = 0;     //���� ������ �� 

		//board ���̺� �ִ� �� �ڷ��� ��(���� ����) �˾� ����
		String jsql = "select count(*) from board";
		PreparedStatement pstmt1 = con.prepareStatement(jsql);
		ResultSet cntRs = pstmt1.executeQuery();	

		cntRs.next();
		int cnt = cntRs.getInt(1);//���� �� ����

		//�� �������� 20���� �� ����ϱ� ����
		//���� ������ 20���� ������ ������ ���
		int cntList = cnt/20; // ������ �� ����ϱ� ���� ���� 
		int remainder = cnt%20; //������
		int cntList_1;//�������� ��
			
		//1(21, 41, 61, 81, ...)��° ���� �ö�� �� �� ������ �� 1 ����
		if (cntList != 0) //���� 20���̻��̸�
		{
			   if (remainder == 0)	 //20���� ���� �������� ������		
				  cntList_1 = cntList;  //���� ������ ��          
			   else                    //�������� ������
				   cntList_1 = cntList + 1; //�� 1 ���� ���� �������� ��		  
		 } 
		 else 		 
			  cntList_1 = cntList + 1; //�������� ��		
			   
		cntRs.close();
			
		String jsql2 = "select * from board order by masterid desc, replynum, step, no";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
		ResultSet rs = pstmt2.executeQuery();
   %>
  
<body>
	   <div class="container1 px-4 px-lg-5">

  <div class="service"><a href="login.jsp">�α���</a>&nbsp;&nbsp; <a href="signup.jsp"> ȸ������</a>&nbsp; &nbsp; ������</div>
</div>
        <nav class="navbar navbar-expand-lg navbar-light">
			
          <div class="container px-4 px-lg-5">
				
                <div class="navbar-brand"></div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					  <div class="dropdown">
          <a class="nav-link"  href="#">�ǰ����</a>
                      </div>
                    
					  <div class="dropdown">
                        <a class="nav-link"  href="#" >��ǰ</a>
						<div class="dropdown-content">
        <a href="#">Best</a>
        <a href="#">��ü��ǰ</a>
							  <a href="signup.html">������</a>
							 <a href="login.html">���к�</a>
      </div>
                      </div>    
                      <a class="nav-link" href="#">���差 ���</a>
					
                      <a class="nav-link "  href="#" >�̺�Ʈ</a>
					
                           
                    </ul>
                  <div class="d-flex">
					  
                    <input type="search" class="btn img_bar" placeholder="�˻�� �Է��ϼ���" >
                 
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
<div class="menu_target">������</div>
				
<br>
<div class="left_menu_bar"><a>��������</a> <br>
				<a>���� ���� ����</a>
				<br>
				<a>1:1 ����</a>
	  </div>
    </div>
</div>
								
<div class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-2 row-cols-xl-1 justify-content-center">
<div class="col mb-5">
                
					<div class="inquiry">���� ���� ����</div>
<hr class="hr_username1"><p class="blank"></p>
<script type="text/javascript">



/***********************************************

* Contractible Headers script- �� Dynamic Drive (www.dynamicdrive.com)

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
  <li id="faq_1_li" class="curr"><a href="#">��ü</a></li>
  <li id="faq_2_li"><a href="#">��۰���</a></li>
  <li id="faq_3_li"><a href="#">��ǰ����</a></li>
  <li id="faq_4_li"><a href="#">ȸ������</a></li>
  <li id="faq_5_li"><a href="#">���/��ȯ/ȯ�Ұ���</a></li>
                           
</ul>
<h3 onClick="expandcontent('sc1')"  class="summary_text" style="cursor:hand; cursor:pointer"><span style="color: #707070; font-weight: normal;" calss="bown_text">��۹���</span> &nbsp; &nbsp; &nbsp; &nbsp;<em>Q</em> <span style="color: #000099">��۱Ⱓ�� �󸶳� �ɸ���?</span></h3>

<div id="sc1" class="switchcontent">

<font face="���� ���"><span style="font-size:10pt;">���� Ȯ�νð� 11�� ���� ��� ���� �ֹ������� ó���Ǿ� 2~5��(�ָ�����),
���� Ȯ�νð� 11�� ���� �� ��� ���� ���������� ó���Ǿ� 2~5��(�ָ�����) ���� �ҿ�˴ϴ�^^
��ǰ�� ���� �ֹ����� ���� ��ǰ�� ��� �߰� ���� �߻��� �� �ֽ��ϴ�.</span></font><font face="���� ���"><span style="font-size:11pt;"></span></font>

</div>



<h3 onClick="expandcontent('sc2')"  class="summary_text" style="cursor:hand; cursor:pointer"><span style="color: #707070; font-weight: normal;" calss="bown_text">��۹���</span> &nbsp; &nbsp; &nbsp; &nbsp;<em>Q</em> <span style="color: #000099">����� or �ҷ��� ���� ��� �ϳ���?</span></h3>

<div id="sc2" class="switchcontent">
<font face="���� ���"><span style="font-size:10pt;">��ǰ�� ������̳� �ҷ��� ���� ��쿣 ���� ������� ���ð�,
�����ͷ� �����ֽø� �ż��� ó���ص帮�ڽ��ϴ�.
(������� ����
�����ǰų� �ѼյǸ� ���� ������ �־ ������ ��ȯ / ȯ���� �Ұ����մϴ�.)</span></font><font face="���� ���"><span style="font-size:11pt;"></span></font></div>


<h3 onClick="expandcontent('sc3')"class="summary_text" style="cursor:hand; cursor:pointer"><span style="color: #707070; font-weight: normal;" calss="bown_text">ȯ�Ұ���</span>&nbsp; &nbsp; &nbsp; &nbsp; <em>Q</em><span style="color: #000099">��ǰ ���´µ� ������ ȯ���̵���?</span></h3>

<div id="sc3" class="switchcontent">
<font face="���� ���"><span style="font-size:10pt;">��ǰ�Ͻ� ��ǰ�� ȯ���� ��ǰ�� ������&nbsp;�������Ϳ� ������ �� 2~3�� ���� ó���ǿ���
�������ֽñ� �ٶ��ϴ�.
ī�� ����� ��� ��� �� ī�� ������ ī����� ���� ó�� �ð����� ���Ͽ� ��ҵ� ���κ���
2~7�� �ȿ� ī��翡�� Ȯ���� �����մϴ�.
���� ������ ���� ��ü�Ǿ�����, ȯ�ҵ��� �ʾ��� ��� ��ǰ�� ��ǰ �ϽǶ���
�̿��Ͻ� �ù��(�� ��ü���ù� �̿�) �̸� �� ����� ��ȣ�� ������&amp;��ȯ��ǰ���� �Խ�������
�˷��ֽø� ���� �ż��� Ȯ�� �� ó���ص帮�ڽ��ϴ�.</span></font><font face="���� ���"><span style="font-size:11pt;"></span></font>
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
        <p class="m-0 text-center text-white">WAY<br> <a href="company.html">ȸ��Ұ�</a> <a href="terms.html">�̿���</a> <a href="privacy.html">�����������ó����ħ</a> <a href="advertisement.html">������</a> <a href="managerLogin.html">�����ڷα���</a><br><br>
          ��ǥ : ������ | �̸��� : cs@way.com | ������ȭ : 02-0000-0000 <br>����ڵ�Ϲ�ȣ : 200-00-00000 ����Ǹž��Ű� : 2022-���ﰭ��-00000 <br>�ּ� : ���� ������ XX�� XX�� 11-77 Copyright �� <br><br>way. All Rights Reserved.</p>
       
      </div>
    </div>
            
    </footer>
		
		  
</body>
	</html>
