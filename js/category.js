$("#jqueryBtn").click(function(){
  $(".quiz-text").text("Javascript");
  $(".quiz-text").css('color', 'blue');
});


function changeByJS() {
 let x = document.getElementsByClassName("quiz-text")[0];
x.innerText="ewr gui gui"; 
	x.innerText="ewr gui gui"; 
	x.innerText="ewr gui gui"; 
  x.style.color="red";
}


function reverse(){
  let x = document.getElementsByClassName("quiz-text")[0];
  x.innerText = "Java";
  x.style.color="black";
}