jQuery(document).on('turbolinks:load', function(){
$(function(){} //特徴ボタンを押せば特徴検索が現れジャンル検索が消える
  $('.index__serch__top__btn.no2').click(function () {
    $('.none2').show(); //特徴検索ボタンが青くなる
    $('.none1').hide(); //ジャンル検索ボタンがグレイになる
    $(this).css('background' , '#668ad8' , 'border-bottom' , '36528c' , 'border-right' , 'solid #5375bd')
    $('.no1').css('background' , 'grey' , 'border-bottom' , 'grey' , 'border-right' , 'grey')
  })
  $('.index__serch__top__btn.no1').click(function () {
    $('.none1').show(); //ジャンル検索ボタンを押せば特徴検索が現れジャンル検索が消える
    $('.none2').hide(); //ジャンル検索ボタンがグレイになる
    $(this).css('background' , '#668ad8' , 'border-bottom' , 'solid 36528c' , 'border-right' , 'solid #5375bd')
    $('.no2').css('background' , 'grey' , 'border-bottom' , 'grey' , 'border-right' , 'grey')
  })
 });
});