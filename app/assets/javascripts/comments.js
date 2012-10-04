$(document).on('click', '#submit-comment', function(e){
  e.preventDefault();
  var message = $('#comment').val();
  $.post('/app/comments/create', { project_id: 1, message: message });
})
