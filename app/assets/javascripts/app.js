$(document).on('click', '.dropdown-list > a', function(e){
  e.preventDefault();
  $(this).next().slideToggle(200);
});

$(document).on('click', '.dropdown-options > li', function(e){
  e.preventDefault();
  var avail = $(this).attr('available');
  var emp = $(this).attr('employee_id');
  var div = $(this);
  $.post('/app/employees/' + emp + '/update_availability.json',  { available: avail, employee_id: emp }, function(data){
    if(data.success){
      var text = "Available";
      if (avail == "false"){
        text = "Not available";
      }
      $('#employee-availability-' + emp).html(text);
      $('#employee-availability-' + emp).parents('.dropdown-list > a').next().slideToggle(200);
    }else{
      alert("Unable to update employee");
    }
  });
});
