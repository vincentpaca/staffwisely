$(document).on('click', '.action-contact', function(e){
  e.preventDefault();

  var employer = $(this).attr('employer-id');
  var employee = $(this).attr('employee-id');
  var user = $(this).attr('current-user');

  if(user == ""){
    window.location = "/users/sign_in";
    return false;
  }

  $('.modal').attr('employer', employer);
  $('.modal').attr('employee', employee);

  $('.modal').fadeIn();
  $('.modal-overlay').fadeIn();
});

$(document).on('click', '.modal .close', function(e){
  e.preventDefault();
  $('.modal').fadeOut();
  $('.modal-overlay').fadeOut();
  $('#message-text').val("");
});

$(document).on('click', '#message-send', function(e){
  var message = $('#message-text').val();

  if (message == ""){
    alert("Message can't be blank");
    return false;
  }

  var employer = $('.modal').attr('employer');
  var employee = $('.modal').attr('employee');

  $.post('/contractors/send_message.json', { message: message, employer: employer, employee: employee }, function(data){
    if(data.success){
      alert("Successfully sent an email!");
      $('.modal').fadeOut();
      $('.modal-overlay').fadeOut();
      $('#message-text').val("");
    }else{
      alert("Something went wrong while sending your message. Please try again later");
    }
  }, "json");
});
