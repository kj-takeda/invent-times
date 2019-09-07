jQuery(document).on('turbolinks:load', function(){
$(function(){
  $('.index__serch__top__btn.no2').click(function () {
    $('.none2').show();
    $('.none1').hide();
    $(this).css('background' , '#668ad8' , 'border-bottom' , '36528c' , 'border-right' , 'solid #5375bd')
    $('.no1').css('background' , 'grey' , 'border-bottom' , 'grey' , 'border-right' , 'grey')
  })
  $('.index__serch__top__btn.no1').click(function () {
    $('.none1').show();
    $('.none2').hide();
    $(this).css('background' , '#668ad8' , 'border-bottom' , 'solid 36528c' , 'border-right' , 'solid #5375bd')
    $('.no2').css('background' , 'grey' , 'border-bottom' , 'grey' , 'border-right' , 'grey')
  })
 });
});