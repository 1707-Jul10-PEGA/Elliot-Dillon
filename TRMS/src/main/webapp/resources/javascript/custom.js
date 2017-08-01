var last_doc=1;

$(document).ready(function() {

	console.log("document loaded");
	//append nav menu
	$.get("nav.html", function(data) {
		$("#navbarPlaceHolder").replaceWith(data);
	});
	
	//append the current list of forms 
	function appendForms(){
		console.log("in append");
		var row = $('<tr></tr>');
		var col1 = $('<td>adfad</td>'); //form id
		var col2 = $('<td>adsfdasf</td>'); //title
		var col3 = $('<td></td>'); //view
		var form = $('<form action="form" method="get"><input type="hidden" name="formID" value=""></input><button class="btn btn-primary">View</button></form>')
		col3.append(form);
		row.append(col1);
		row.append(col2);
		row.append(col3);
		$('tbody').append(row);
	}
	
	
});




