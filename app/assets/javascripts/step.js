(function(){
  W.ns("Chima.Step");

  Chima.Step = {
    jumpTo2: function(){
      var gender = $("#gender").val();
      if(W.String.isEmpty(gender)){
        gender = 0;
      }
      window.location.href = "/welcome/step2?gender=" + gender;
    },
    selectHeight: function(self){
      var height = self.attr("value");
      $("#height_id").val(height);
    },
    selectWeight: function(self){
      var weight = self.attr("value");
      $("#weight_id").val(weight);
    },
    jumpTo3: function(){
      var data = $("#sg_data").text();
      if(data == "-- 请选择身高 --"){
        alert("请选择身高");
        return
      }
      var tz_data = $("#tz_data").text();
      if(tz_data == "-- 请选择体重 --"){
        alert("请选择体重");
        return
      }
      var height = $("#height_id").val();
      var weight = $("#weight_id").val();
      window.location.href = "/welcome/step3?height=" + height + "&weight=" + weight
    },
    jumpTo4: function(){
      var style = $("#style").val();
      window.location.href = "/welcome/step4?style=" + style;
    },
    jumpTo5: function(){
      window.location.href = "/welcome/step5";
    },
    jumpTo6: function(){
      window.location.href = "/welcome/step6";
    },
    jumpTo7: function(){
      window.location.href = "/welcome/step7";
    },
    actualSize: function(type){
      var value = $("#"+type).val();
      $.ajax({
        url: "/welcome/actual_size",
        type: "POST",
        data: {
          'column': type,
          'value': value
        },
        success: function(data){
          if(data.retCode)
            alert("成功");
          else
            alert("失败");
        }
      });
    },
    loadXifu: function(){
      $.ajax({
        url: "/welcome/load_xifu",
        type: 'GET',
        success: function(data){
          if ($("#xifu").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeXifuStyle: function(style){
      $.ajax({
        url: "/welcome/load_xifu",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#xifu_content").remove();
          $("#right_top").after(data);
        }
      })
    },
    loadXiku: function(){
      $.ajax({
        url: "/welcome/load_xiku",
        type: "GET",
        success: function(data){
          if ($("#xiku_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeXikuStyle: function(style){
      $.ajax({
        url: "/welcome/load_xiku",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#xiku_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadDressShirt: function(){
      $.ajax({
        url: "/welcome/load_dressshirt",
        type: "GET",
        success: function(data){
          if ($("#dressshirt_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeDressshirtStyle: function(style){
      $.ajax({
        url: "/welcome/load_dressshirt",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#dressshirt_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadCasualShirt: function(){
      $.ajax({
        url: "/welcome/load_casualshirt",
        type: "GET",
        success: function(data){
          if ($("#casualshirt_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeCasualshirtStyle: function(style){
      $.ajax({
        url: "/welcome/load_casualshirt",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#casualshirt_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadTshirt: function(){
      $.ajax({
        url: "/welcome/load_tshirt",
        type: "GET",
        success: function(data){
          if ($("#tshirt_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeTshirtStyle: function(style){
      $.ajax({
        url: "/welcome/load_tshirt",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#tshirt_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadPolo: function(){
      $.ajax({
        url: "/welcome/load_polo",
        type: "GET",
        success: function(data){
          if ($("#polo_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changePoloStyle: function(style){
      $.ajax({
        url: "/welcome/load_polo",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#polo_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadCoat: function(){
      $.ajax({
        url: "/welcome/load_coat",
        type: "GET",
        success: function(data){
          if ($("#coat_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeCoatStyle: function(style){
      $.ajax({
        url: "/welcome/load_coat",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#coat_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadJack: function(){
      $.ajax({
        url: "/welcome/load_jack",
        type: "GET",
        success: function(data){
          if ($("#jack_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeJackStyle: function(style){
      $.ajax({
        url: "/welcome/load_jack",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#jack_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadWaitao: function(){
      $.ajax({
        url: "/welcome/load_waitao",
        type: "GET",
        success: function(data){
          if ($("#waitao_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeWaitaoStyle: function(style){
      $.ajax({
        url: "/welcome/load_waitao",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#waitao_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadOvercoat: function(){
      $.ajax({
        url: "/welcome/load_overcoat",
        type: "GET",
        success: function(data){
          if ($("#overcoat_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeOvercoatStyle: function(style){
      $.ajax({
        url: "/welcome/load_overcoat",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#overcoat_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadSweater: function(){
      $.ajax({
        url: "/welcome/load_sweater",
        type: "GET",
        success: function(data){
          if ($("#sweater_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeSweaterStyle: function(style){
      $.ajax({
        url: "/welcome/load_sweater",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#sweater_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadDustcoat: function(){
      $.ajax({
        url: "/welcome/load_dustcoat",
        type: "GET",
        success: function(data){
          if ($("#dustcoat_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeDustcoatStyle: function(style){
      $.ajax({
        url: "/welcome/load_dustcoat",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#dustcoat_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadSuncoat: function(){
      $.ajax({
        url: "/welcome/load_suncoat",
        type: "GET",
        success: function(data){
          if ($("#suncoat_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeSuncoatStyle: function(style){
      $.ajax({
        url: "/welcome/load_suncoat",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#suncoat_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadStandcoat: function(){
      $.ajax({
        url: "/welcome/load_standcoat",
        type: "GET",
        success: function(data){
          if ($("#standcoat_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeStandcoatStyle: function(style){
      $.ajax({
        url: "/welcome/load_standcoat",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#standcoat_content").remove();
          $("#right_top").after(data);
        }
      });
    },
    loadTangcoat: function(){
      $.ajax({
        url: "/welcome/load_tangcoat",
        type: "GET",
        success: function(data){
          if ($("#tangcoat_content").length != 0)
            return;
          $("#right_top").after(data);
        }
      });
    },
    changeTangcoatStyle: function(style){
      $.ajax({
        url: "/welcome/load_tangcoat",
        type: "GET",
        data: {
          'style': style
        },
        success: function(data){
          $("#tangcoat_content").remove();
          $("#right_top").after(data);
        }
      });
    }
  };

})();