var last_doc=1;

$(document).ready(function() {

	console.log("document loaded");
	//append nav menu
	$.get("nav.html", function(data) {
		$("#navbarPlaceHolder").replaceWith(data);
	});
	
	//add addition doc to reimbursement forms
	$("#add_doc").click(function(e){
		e.preventDefault();
		
		var row = $('<li class="list-group-item extra_doc"></div>');
		var label = $('<label class="sr-only">Extra Doc</label>');
		var file = $("<input type='file' class='form-control-file col-4'/>");
		var selection = $('<select class="form-control col-3"><option>Other</option><option>Supervisor Approval Email</option><option>Department Head Approval Email</option></select>');
		row.append(label);
		row.append(file);
		row.append(selection);
		$("#additional_doc").after(row);	
	});

	//remove the last added additional doc
	$("#remove_doc").click(function(e){
		e.preventDefault();
		$(".extra_doc").last().remove();
	});
	
<<<<<<< HEAD
	$("#test").click(function(e){
		e.preventDefault();
		console.log("in click");
		appendForms();
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
=======
});

>>>>>>> progressBar
