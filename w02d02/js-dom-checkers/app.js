function addListItem(value) {
	var newItem = document.createElement("li");
	newItem.innerHTML = value;
	var list = document.getElementsByTagName("ul")[0];
	list.append(newItem);
}

var selected = document.getElementsByTagName("li");
for (var i = 0; i < 64;  i++) {
	//call the function
	addListItem("");
}
var listItems = document.getElementsByTagName("li");

for (var i = 0; i < listItems.length; i+=2){
if (i % 2 == 0) {
   // if (i % 4 == 0) {
      listItems[i].className = "white";
   } else if (i % 2 == !0){

      listItems[i].className = "black";
   
}}
//var rows = document.querySelectorAll('tr:nth-child(odd)'); /* or even */
//for(var r = 0; r < rows.length; r++){
  // rows[r].className = "black";
//}

