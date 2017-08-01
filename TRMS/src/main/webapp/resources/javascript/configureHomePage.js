
$(document).ready(function(){
	promiseGetEmployee()
		.then(function(employee){
			configureWelcomeTag(employee);
		});

	promiseGetPendingRequestCount()
		.then(function(pendingRequestCount){
			configurePendingRequestCount(pendingRequestCount);
		});

	promiseGetCurrentFormCount()
		.then(function(currentFormCount){
			configureCurrentFormCount(currentFormCount);
		});

});

// promise function for pending requests count

function configureWelcomeTag(name){
	$("#welcome").text("WELCOME BACK " + name.firstName +" "+ name.lastName +"!");
}

function configurePendingRequestCount(pendingRequestCount) {
	$("#request").text("You currently have "+ pendingRequestCount + " pending requests!");
}

function configureCurrentFormCount(currentFormCount) {
	$("#current").text("You have submitted "+ currentFormCount + " forms!");
}

