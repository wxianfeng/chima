// JavaScript Document

$(document).ready(function(){
	$('#sexSty,#specs img').click(function(event){
		if(event.target.id=="shoushen"){
			$('#kuansong,#putong').attr("src","images/radio_2_0.png");	
			$('#shoushen').attr("src","images/radio_1_0.png");
		}else if(event.target.id=="kuansong"){
			$('#shoushen,#putong').attr("src","images/radio_2_0.png");
			$('#kuansong').attr("src","images/radio_1_0.png");
		}else if(event.target.id=="putong"){
			$('#shoushen,#kuansong').attr("src","images/radio_2_0.png");
			$('#putong').attr("src","images/radio_1_0.png");
		}	
		
		if(event.target.id=="male"){
			$('#female').attr("src","images/radio_2_0.png");	
			$('#male').attr("src","images/radio_1_0.png");
		}else if(event.target.id=="female"){
			$('#male').attr("src","images/radio_2_0.png");
			$('#female').attr("src","images/radio_1_0.png");
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