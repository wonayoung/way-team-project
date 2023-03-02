////////////////////검색창/////////////////////////////
/*
function onEnterSubmitSearch()                 
{
  	var keyCode = window.event.keyCode;
   	if(keyCode==13)  searchPrd.submit();   
}
*/
//////////////////////////////////////////////////////

////////////////////signUp.jsp///////////////////////////

//ID 중복체크
function checkID()		
{  										
	var id = document.signUp.id.value;		

    if (id  == "")				
    {
		alert("ID를 입력해 주세요!"); 
		document.signUp.id.focus(); 
		return; 
    }

	window.open("checkId.jsp?id="+id,"win", "width=255, height=145, scrollbars=no, resizable=no");
}                                        



//유효성검사
function checkValue()           
{                                           
	if(document.signUp.id.value == "")   
    {
		alert("ID를 입력해 주세요!");  
		document.signUp.id.focus();					
		return;                         
    }

	var pw=document.signUp.pw.value;
	var checkPw=document.signUp.checkPw.value;

    if(pw == "") 
    {
		alert("비밀번호를 입력해 주세요!");
		document.signUp.pw.focus();
		return;
    }
    
	if(checkPw == "") 
    {
		alert("확인 비밀번호를 입력해 주세요!");
		document.signUp.checkPw.focus();
		return;
    }
    
	if(pw!==checkPw){
		alert("비밀번호가 다릅니다!");
		document.signUp.pw.focus();
		return;
	}


    if(document.signUp.name.value == "") 
    {
		alert("성명을 입력해 주세요!");
		document.signUp.name.focus();
		return;
    }

    if(document.signUp.birth.value == "") 
    {
		alert("생년월일을 입력해 주세요!");
		document.signUp.birth.focus();
		return;
    }

    if(document.signUp.email1.value == "") 
    {
		alert("이메일 앞자리를 입력해 주세요!");
		document.signUp.email1.focus();
		return;
    }

    if(document.signUp.email2.value == "") 
    {
		alert("이메일 뒷자리를 입력해 주세요!");
		document.signUp.email2.focus();
		return;
    }

    if(document.signUp.phone.value == "") 
    {
		alert("연락처를 입력해 주세요!");
		document.signUp.birthMonth.focus();
		return;
    }

    signUp.submit();   // 입력한 값들을 모두 서버로 전송함
}




//커서 아이디 입력창에
function idFocus()        
{									
	document.signUp.id.focus();
	return;
}

///////////////////////////////////////////////////////////////////////////////

///////////////////////////////login.html///////////////////////////////////////

function login_check()      // 로그인시 미입력항목 부분을 체크해주는 자바스크립트 함수
{
	if(document.login.id.value=="")
	{
    	alert("아이디를 입력해 주세요.");
    	document.login.id.focus();
    	return;	
    }

    if(document.login.pw.value=="")
	{
    	alert("비밀번호를 입력해 주세요.");
    	document.login.pw.focus();			
    	return;
    }
		
    document.login.submit();
}



function onEnterSubmitLogin()     // 로그인버튼을 클릭하지 않고, 엔터키를 입력하더라도 로그인 가능하게 해줌               
{
  	var keyCode = window.event.keyCode;
   	if(keyCode==13)  login.submit();    //  "keyCode==13"은 엔터키가 입력됨을 의미함
}
	

function login_focus()    
{										
   	document.login.id.focus();
   	return;
}

///////////////////////////////////////////////////////////////////////////////

////////////////////////아이디, 비밀번호 찾기(findId.html, findPw.html)///////////////////////

function find_value()
{
	if(document.findIdPw.name.value=="")
	{
    	alert("이름을 입력해 주세요.");
    	document.findIdPw.name.focus();
    	return;	
	}

	if(document.findIdPw.id.value=="")
	{
    	alert("아이디를 입력해 주세요.");
    	document.findIdPw.id.focus();
    	return;	
	}

    if(document.findIdPw.phone.value=="")
	{
    	alert("전화번호를 입력해 주세요.");
    	document.findIdPw.phone.focus();			
    	return;
    }
	


	findIdPw.submit();
}

//혹시나 -입력해도 잘 돌아가게 수정해주기
function deleteHy()
{
	var myphone = document.findIdPw.phone.value.replace(/\-/g,'');

	var Myelement = document.getElementById("phone");
	Myelement.value = myphone;

	return;
}

function findIdFocus()
{
	document.findIdPw.name.focus();
	return;
}

function findPwFocus()
{
	document.findIdPw.id.focus();
	return;
}


////////////////장바구니 페이지/////////////////////
function selectAll(selectAll)  {
  const checkboxes 
       = document.getElementsByName('inCart');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked;
  })
	
  
    document.getElementById('result').innerText = document.cart.total.value+"원";
}

function getCheckboxValue()  {
    // 선택된 목록 가져오기
    const query = 'input[name="inCart"]:checked';
    const selectedEls = document.querySelectorAll(query);

    // 선택된 목록에서 value 찾기
    let result = 0;

    selectedEls.forEach((el) => {
      result += parseInt(el.value)*document.cart.qty.value;
    });

    if(result<50000)
		result=result+3000;

    // 출력
    document.getElementById('result').innerText
      = result+"원";

  }

  function inCart()              //  "장바구니담기" 버튼을 클릭시 호출
{
	var str=cart.qty.value;
	document.cart.total.value=document.getElementById('result').innerText;
	var frm = document.cart;
	frm.action = "inCart.jsp";
	frm.submit();
}

////////////상품 상세 페이지///////////

function getPrice(event)		//총 상품금액 출력
{
	var totalPrice = event.target.value;
	if (totalPrice<50000)
	{
		totalPrice=parseInt(totalPrice)+3000;
	}
	document.getElementById('total').innerText = totalPrice+"원";
}

function directOrd()        //  "바로구매" 버튼을 클릭시 호출
{
	var frm = document.product;
	frm.action = "directOrder.jsp";
	frm.submit();
}


function inCart()              //  "장바구니" 버튼을 클릭시 호출
{
	var frm = document.product;
	frm.action = "inCart.jsp";
	frm.submit();
}


////////////////////inCart.jsp//////////////////////

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



///////////////////order.jsp////////////////////////

function sameInfo()    //체크시 구매자 정보와 동일하게 처리
{
  const sameInfo = document.getElementById("info");
  const isChecked = sameInfo.checked;
  
  if(isChecked){
	  document.orderInfo.name.value = document.orderInfo.memName.value;
	  document.orderInfo.phone.value = document.orderInfo.memPhone.value;
	  document.orderInfo.addr.value = document.orderInfo.memAddr.value;
  }
  else{
	  document.orderInfo.name.value = "";
	  document.orderInfo.phone.value = "";
	  document.orderInfo.addr.value = "";
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

	const agree = document.getElementById("agree");
	const isAgree = agree.checked;

	if(!isAgree){
		alert("구매 진행에 동의해주세요!");
		return;
	}

	orderInfo.submit();
}