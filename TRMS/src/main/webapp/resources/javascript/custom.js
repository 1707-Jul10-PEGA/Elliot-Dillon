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
	
	// paste the comment on the reimbursement form
	$("#add_comment").click(function(e) {
		e.preventDefault();
		var date = new Date();
		var month = date.getMonth()+1;
		var day = date.getUTCDate();
		var year = date.getFullYear();
		var hour = date.getHours();
		var min = date.getMinutes();
		
		var row = $('<li class="list-group-item"></li>');
		var label = $('<label for="comment">[Title, name]: </label>');
		var comment = $("#comment").val();
		
		row.append(label);
		row.append($('<br>'));
		row.append($('<br>'));
		row.append($('<br>'));
		row.append($('<br>'));
		row.append(comment);
		row.append($('<br>'));
		row.append($('<br>'));
		row.append(month + "/" + day + "/" + year + " " + hour + ":" + min);
		$("#additional_comment").after(row);
		
		// clear the text area
		$("#comment").val('');
	});
	
});