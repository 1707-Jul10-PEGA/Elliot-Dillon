
$(document).ready(function(){
	promiseGetEmployee()
		.then(function(employee){
			configureWelcomeTag(employee);
		});

	promiseGetCurrentFormCount()
		.then(function(currentFormCount){
			configureCurrentFormCount(currentFormCount);
		});

	// promise function for pending requests count

});

// promise function for pending requests count

function configureWelcomeTag(name){
	$("#welcome").text("WELCOME BACK " + name.firstName +" "+ name.lastName +"!");
}

function configureCurrentFormCount(currentFormCount) {
	$("#current").text("You have submitted "+ currentFormCount + " forms!");
}

