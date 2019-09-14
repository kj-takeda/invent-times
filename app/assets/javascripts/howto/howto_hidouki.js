$(document).on('turbolinks:load', function(){
  //function buildHTML(date){

    //var html = `<div class="index-show__flame__top4__in">
      //              <div class="index-show__flame__top4__in__left">
        //              ${ date.user_name}
          //          </div>
            //        <div class="index-show__flame__top4__in__left">
             //       </div>
              //      <div class="index-show__flame__top4__in2">
                //      ${ date.comment}
                  //  </div>
                 // </div>`;
          //return html;
       // }
  $('.new_howto').on('submit', function(e){
    e.preventDefault();
    var howto = new FormData(this);
    var url = $(this).attr('action')
    $.ajax({ 
      url: url,
      type: 'POST',
      data: howto,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(date){
    console.log(date)

     // var html = buildHTML(data);
     // $('.index-show__flame__top4').append(html);
      
    })
  })
});