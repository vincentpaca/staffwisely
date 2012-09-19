$(document).on('click', '#notify-me', function(){
  var email = $('#notify-email').val();

  if (email == ""){
    $(".notification-tip.error").show();
    return false;
  }

  $.post("/notify_me.json", { email: email }, function(data){
    $('.input-wrapper').hide();
    $('.loader').show();
    if(data.success){
      $('.loader').hide();
      $('.input-wrapper').show();
      $('.input-wrapper').html("<h3>Thanks! We'll keep you posted.</h3>");
    }else{
      $('.loader').hide();
      $('.input-wrapper').show();
      $('.notification-tip.error').show();
    }
  });
});
