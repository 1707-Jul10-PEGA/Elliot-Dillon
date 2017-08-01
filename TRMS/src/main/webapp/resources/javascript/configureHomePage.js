
$(document).ready(function(){
	promiseGetEmployee()
		.then(function(employee){
			configureWelcomeTag(employee);
		});

});

// promise function for current form count
$(document).ready(function(){
	promiseGetCurrentFormCount()
		.then(function(currentFormCount){
			configureCurrentFormCount(currentFormCount);
		});

});

function configureWelcomeTag(name){
	$("#welcome").text("WELCOME BACK " + name.firstName +" "+ name.lastName +"!");
}

function configureCurrentFormCount(currentFormCount) {
	$("#current").val(currentFormCount);
}

