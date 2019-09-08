jQuery(document).on('turbolinks:load', function(){
$(function(){
  $('.no2').click(function () {
    $('.none1').hide()
    $('.none2').show()
    $('.no2').css('background','#668ad8','border-right','solid 5px #5375bd')
    $('.no1').css('background','grey','border-right','solid 5px grey')
  })
  $('.no1').click(function () {
    $('.none2').hide()
    $('.none1').show()
    $('.no1').css('background','#668ad8','border-right','solid 5px #5375bd')
    $('.no2').css('background','grey','border-right','solid 5px grey')
   
  })


 });
});