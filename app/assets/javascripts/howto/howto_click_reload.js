$(document).on('turbolinks:load', function(){
  $(".new_howto").on('submit', function() {
    $('.input-btn').toggleClass('active');
    $('.input-btn').prop("disabled", true);
    setTimeout(function(){
      window.location.reload();
    }, 100);
  })
});