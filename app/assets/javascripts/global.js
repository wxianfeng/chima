// JavaScript Document

$(document).ready(function(){
  $('#sexSty,#specs img').click(function(event){
    if(event.target.id=="thin"){
      $("#style").val('tight');
      $('#loose,#normal,#suit').attr("src","/assets/radio_2_0.png");
      $('#thin').attr("src","/assets/radio_1_0.png");
    }else if(event.target.id=="loose"){
      $("#style").val('loose');
      $('#thin,#normal,#suit').attr("src","/assets/radio_2_0.png");
      $('#loose').attr("src","/assets/radio_1_0.png");
    }else if(event.target.id=="normal"){
      $("#style").val('normal');
      $('#thin,#suit,#loose').attr("src","/assets/radio_2_0.png");
      $('#normal').attr("src","/assets/radio_1_0.png");
    }else if(event.target.id=="suit"){
      $("#style").val('fit');
      $('#thin,#normal,#loose').attr("src","/assets/radio_2_0.png");
      $('#suit').attr("src","/assets/radio_1_0.png");
    }

    if(event.target.id=="male"){
      $('#female').attr("src","/assets/radio_2_0.png");
      $('#male').attr("src","/assets/radio_1_0.png");
      $("#gender").val(0);
    }else if(event.target.id=="female"){
      $('#male').attr("src","/assets/radio_2_0.png");
      $('#female').attr("src","/assets/radio_1_0.png");
      $("#gender").val(1)
    }
  });

  $('#sg_data,#tz_data,#pinpai_name').click(function(event){
    if(event.target.id=="sg_data"){
      $('#shengao').show();
      $('#tizhong').hide();
    }else if(event.target.id=="tz_data"){
      $('#tizhong').show();
      $('#shengao').hide();
    }else if(event.target.id=="pinpai_name"){
      $('#pinpai').show();
    }
  });

  $('#shengao li a').click(function(event){
    $('#shengao').hide();
    $('#sg_data').html($(this).html());
  });
  $('#tizhong li a').click(function(event){
    $('#tizhong').hide();
    $('#tz_data').html($(this).html());
  });

  $('#pinpai li a').click(function(event){
    $('#pinpai').hide();
    $('#pinpai_name').html($(this).html());
  });
  $('#zhonglei span').click(function(index){
    $('#zhonglei span').removeClass('styBox_leftCell_chosen').addClass('styBox_leftCell');
    if(index){
      var num = $(this).index();
      $(this).removeClass('styBox_leftCell').addClass('styBox_leftCell_chosen');
      $('.leftCell_ul').hide();
      $('#leftCell_ul_'+num).show();
    }
  });
  $('#xh_table table tr:nth-child(odd) td').css('background','#e3e3e3');
  $('#xh_table table tr:nth-child(even) td').css('background','#d8d8d8');
});