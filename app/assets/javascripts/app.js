$(document).ready(function(){
  $('#tags_3').tagsInput();
});

$(document).on('click', '.dropdown-list > a', function(e){
  e.preventDefault();
  $(this).next().slideToggle(200);
});

$(document).on('click', '.dropdown-options > li', function(e){
  e.preventDefault();
  var avail = $(this).attr('availability');
  var emp = $(this).attr('employee_id');
  var div = $(this);
  $.post('/app/employees/' + emp + '/update_availability.json',  { availability: avail, employee_id: emp }, function(data){
    if(data.success){
      $('#employee-availability-' + emp).html(avail);
      $('#employee-availability-' + emp).parents('.dropdown-list > a').next().slideToggle(200);
    }else{
      alert("Unable to update employee");
    }
  });
});

$(document).on('click', "#leaveCommentLink", function(e){
  e.preventDefault();

  $(this).parent().addClass("active");
  $("#addActivityLink").parent().removeClass("active");

  $("#addActivity").hide();
  $("#leaveComment").show();
});

$(document).on('click', "#addActivityLink", function(e){
  e.preventDefault();

  $(this).parent().addClass('active');
  $("#leaveCommentLink").parent().removeClass("active");

  $("#addActivity").show();
  $("#leaveComment").hide();
});
