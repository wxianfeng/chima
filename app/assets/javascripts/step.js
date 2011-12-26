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
    }
  };

})();