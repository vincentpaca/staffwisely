$(document).on('click', '.contact-logged', function(e){
  e.preventDefault();

  /**
  * Dear future self,
  * The variables are going to be very confusing.
  * Deal with it.
  * Employer will be the company hiring the employee, the currently logged in user's company
  * Employee will be the company of the staff, since you're providing the employee
  * Staff will be the staff involved in the project.
  **/

  var employer = $(this).attr('employer-id');
  var employee = $(this).attr('employee-id');
  var staff = $(this).attr('staff-id');

  $('.modal').attr('employer', employer);
  $('.modal').attr('employee', employee);
  $('.modal').attr('staff', staff);

  $('.modal').fadeIn();
  $('.modal-overlay').fadeIn();
});

$(document).on('click', '.modal .close', function(e){
  e.preventDefault();
  $('.modal').fadeOut();
  $('.modal-overlay').fadeOut();
  $('#message-text').val("");
});

$(document).on('click', '#send-project', function(e){
  var title = $('#project-title').val();
  var details = $('#project-details').val();

  if (title == ""){
    alert("Title can't be blank");
    return false;
  }

  if (details == ""){
    alert("Details can't be blank");
    return false;
  }

  var employer = $('.modal').attr('employer'); // Hiring Company
  var employee = $('.modal').attr('employee'); // Employees Company
  var staff = $('.modal').attr('staff');

  $.post('/contractors/send_proposal', { title: title, details: details, employer: employer, employee: employee, staff: staff });
});
