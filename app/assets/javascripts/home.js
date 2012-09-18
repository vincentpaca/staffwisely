$(document).on('click', '#notify-me', function(){
  var email = $('#notify-email').val();
  $.post("/notify_me.json", { email: email }, function(){
    $('#notify-email').val("");
    alert("Thank you for signing up!");
  });
});
