/**
 * 
 */



$(document).ready(function(){
	promiseGetForm()
		.then(function(form){
			$('#title').val(form.title);
			$('#PID').val(form.pid);
			$('#street').val(form.street);
			$('#city').val(form.city);
			$('#state').val(form.state);
			$('#zip_code').val(form.zipCode);
			$('#event_type').val(form.typeOfEvent);
			$('#date').val(form.startDate);
			$('#time').val(form.startTime);
			$('#cost').val(form.requestedAmount);
			$('#timeoff').val(form.estimatedTimeOff);
			$('#description').val(form.description);
			$('#grading_format').val(form.gradingFormat);
			$('#timeoff').val(form.estimatedTimeOff);
		});
	
	
	promiseGetSupervisorEmployee()
		.then(function(employee){
			$("#PID").val(employee.pid);
			$("#firstname").val(employee.firstName);;
			$("#lastname").val(employee.lastName);
			$("#email").val(employee.email);
			$("#phone_number").val(employee.phonenumber);
		});
	
});