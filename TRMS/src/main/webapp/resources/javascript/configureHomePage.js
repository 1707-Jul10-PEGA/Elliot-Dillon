

$(document).ready(function(){
	promiseGetEmployee()
		.then(function(employee){
			configureWelcomeTag(employee);
		});

});

function configureWelcomeTag(name){
	$("#welcome").text("WELCOME BACK " + name.firstName +" "+ name.lastName +"!");
}

