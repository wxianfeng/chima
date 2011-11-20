(function(){
  W.ns("Chima.Admin");

  Chima.Admin = {
    newModel: function(){
      var html = "<tr>" + $("#models tr:last").html() + "</tr>";
      $("#models tr:visible:last").after(html);
    },
    // 更换 下拉框的options
    changeUpSizeCategory: function(select,newOptions){
      var $select = select;
      if($select.prop) {
        var options = $select.prop('options');
      }
      else {
        var options = $select.attr('options');
      }
      $('option', $select).remove();
      $.each(newOptions, function(val, text) {
        options[options.length] = new Option(text, val);
      });
    }
  };
})();