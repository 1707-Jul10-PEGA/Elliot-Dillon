function promiseGetEmployee(){
	return new Promise(function(resolve,reject){
		$.ajax({
		    url:'getEmployee',
		    type:'GET'
		  })
		    .done(function(response){
//		      console.log("in success");
		      console.log(response);
//		      console.log("type: " +  typeof(response));
		      var employee = JSON.parse(response);
		      resolve(employee);
		    })
		    .fail(function(response){
//		      console.log("printed on error");
//		      console.log(response);
//		      console.log(jQuery.parseJSON(response));
		      reject(null);
		    });
	});
}

function promiseGetCurrentFormCount(){
	return new Promise(function(resolve,reject){
		$.ajax({
		    url:'getCurrentFormCount',
		    type:'GET'
		  })
		    .done(function(response){
		      resolve(response);
		    })
		    .fail(function(response){
		      console.log("error");
		      reject(null);
		    });
	});
}

function promiseGetPendingRequestCount(){
	return new Promise(function(resolve,reject){
		$.ajax({
		    url:'getPendingRequestCount',
		    type:'GET'
		  })
		    .done(function(response){
		      resolve(response);
		    })
		    .fail(function(response){
		      console.log("error");
		      reject(null);
		    });
	});
}

function promiseGetListOfCurrentForms(){
	return new Promise(function(resolve,reject){
		$.ajax({
		    url:'getListOfCurrentForms',
		    type:'GET'
		  })
		    .done(function(response){
		    	console.log(response);
		    	resolve(response);
		    })
		    .fail(function(response){
		      console.log("error");
		      reject(null);
		    });
	});
}