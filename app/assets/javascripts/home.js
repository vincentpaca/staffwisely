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

$(document).on('click', '.menu > li > a', function(e){
  $(this).parent().toggleClass('active');
});

$(document).on('click', '#people-bench', function(e){
  $('.slide-wrapper.bench').show();
  $('.slide-wrapper.hire').hide();
  $(this).addClass('active');
  $('#need-contractor').removeClass('active');
});

$(document).on('click', '#need-contractor', function(e){
  $('.slide-wrapper.bench').hide();
  $('.slide-wrapper.hire').show();
  $(this).addClass('active');
  $('#people-bench').removeClass('active');
});

$(document).on('click', '#search-submit', function(e){
  var query = $('#search-query').val();
  if(query != ""){
    window.location = "/contractors?q=" + query;
  }
});
