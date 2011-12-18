// JavaScript Document

$(document).ready(function(){
  $('#sexSty,#specs img').click(function(event){
    if(event.target.id=="shoushen"){
      $("#style").val('thin');
      $('#kuansong,#putong').attr("src","/assets/radio_2_0.png");
      $('#shoushen').attr("src","/assets/radio_1_0.png");
    }else if(event.target.id=="kuansong"){
      $("#style").val('loose');
      $('#shoushen,#putong').attr("src","/assets/radio_2_0.png");
      $('#kuansong').attr("src","/assets/radio_1_0.png");
    }else if(event.target.id=="putong"){
      $("#style").val('normal');
      $('#shoushen,#kuansong').attr("src","/assets/radio_2_0.png");
      $('#putong').attr("src","/assets/radio_1_0.png");
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

  $('#sg_data,#tz_data').click(function(event){
    if(event.target.id=="sg_data"){
      $('#shengao').show();
      $('#tizhong').hide();
    }else if(event.target.id=="tz_data"){
      $('#tizhong').show();
      $('#shengao').hide();
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
});