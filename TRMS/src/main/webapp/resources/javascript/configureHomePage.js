$(document).ready(function(){
	$.ajax({
    url:'getEmployee',
    type:'GET'
  })
    .done(function(response){
      console.log("in success");
      console.log(response);
      console.log("type: " +  typeof(response));
      var employee = JSON.parse(response);
    })
    .fail(function(response){
      console.log("printed on error");
      console.log(response);
      console.log(jQuery.parseJSON(response));
    });



});

function getEmployee(){
	
}
