document.addEventListener("DOMContentLoaded", function() {
    var buttons = document.getElementsByTagName("button");
    var display = document.getElementById("display");
    var buttonEq = document.getElementById("equals")

    var val1;
    var val2;
    var answer;
    var op;
    var answer;
    var operators = ["+", "-", "*", "/", "C", "="]
    var choice = [ "+", "-", "*", "/" ]

	//getting all buttons showing their representative value
   	
   	for (i = 0; i < buttons.length; i ++){
   		buttons[i].addEventListener("click", function(){
   			display.innerText = this.value;
   			//console.log(this.value);
   			//checks that the operator is not the array and it has the value of -1 to check for number
   			if (operators.indexOf(this.value) == -1){

   				if(!val1){
   					val1 = parseFloat(this.value);
   				}else if (!val2){
   					val2 = parseFloat(this.value);
   				}else{
   					alert("both numbers have been chosen");
   				}

   				
	   		} else if(this.value != "C" && this.value != "="){
	   				if (op == null) {
	   					op = this.value;
	   				}
	   			
	   		} else if(this.val() == "C") {
	   				val1 = null;
	   				val2 = null;
	   				answer = null;
	   				op = null;

   			} //if(this.value == "equals"){
   				
   			//

   			
   			
   			
	function add(num1, num2) {
	    return num1 + num2;
	}
	function subtract(num1, num2) {
	    return num1 - num2;
	}
	function multiply(num1, num2){
	    return num1 * num2;
	}
	function divide(num1, num2){
	    return num1 / num2;
	}

	buttonEq.addEventListener("click", function(){	
	if(op == "+") {

	       answer = add(val1, val2);

	    } else if(op == "-") {

	        answer = subtract(val1, val2);

	    } else if(op == "*") {

	        answer = multiply(val1, val2);

	    } else if(op == "/") {

	        answer = divide(val1, val2);
	   	}
	   	debugger;
	    display.innerText = answer;
	   	console.log(answer);
	   	});

															});
	};
});


//getting operators to work

//getting val1 + val2

//getting val1 - val2

//getting val1 * val2

//getting val1 / val2

//being able to submit

//being able to reset

// ** extra values eg 12 + 12

//having powers

//having sqrt

//being able to keep adding etc until submit is pressed