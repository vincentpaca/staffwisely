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
  e.stopPropagation();
});

$(document).on('click', 'html', function(e){
  $('.menu > li > a').parent().removeClass('active');
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

$(document).on('click', '#switch-contractors', function(e){
  e.preventDefault();
  $("#page-contractors").show();
  $("#page-bench").hide();
  $("#switch-bench").removeClass('active');
  $("#switch-contractors").addClass('active');
  $(".feature").addClass('switch');
});

$(document).on('click', '#switch-bench', function(e){
  e.preventDefault();
  $("#page-contractors").hide();
  $("#page-bench").show();
  $("#switch-bench").addClass('active');
  $("#switch-contractors").removeClass('active');
  $(".feature").removeClass('switch');
});


$(document).on('click', '#search-submit', function(e){
  var query = $('#search-query').val();
  if(query != ""){
    window.location = "/contractors?q=" + query;
  }
});
