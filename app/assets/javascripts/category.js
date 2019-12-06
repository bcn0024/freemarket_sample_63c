$(function(){


  function buildOPTION(child){
    var html = `<option value="${child.id}">${child.name}</option>`;
    return html;
  }

  function buildCHILD(insertHTML) {
    var html = `<div class="select-wrap-child">
                <i class="fas fa-chevron-down"></i>
                <select class="select-default" id="child-form" name="item[category_id][]">
                <option value="">---</option>
                </div>
                ${insertHTML}
                </select>
              `
    return html;
  }

  function buildGRANDCHILD(insertHTML) {
    var html = `
                <div class="select-wrap-grand">
                <i class="fas fa-chevron-down"></i>
                <select class="select-default" id="grandchild-form" name="item[category_id][]">
                <option value="">---</option>
                ${insertHTML}
                </select>
                </div>
              `
    return html;
  }


    $(document).on("change", "#parent-form", function(){
      var parentValue = document.getElementById("parent-form").value;
      console.log(parentValue);

      if (parentValue != '') {
        $.ajax({
          url: '/products/children',
          type: "GET",
          data: {
            parent_id: parentValue
          },
          dataType: 'json'
        })

        .done(function(children){
          console.log("success");
          var insertHTML = '';
          children.forEach(function(child){
            insertHTML += buildOPTION(child);
          });
          var html = buildCHILD(insertHTML);
          $('.select-wrap:first').append(html);
          $("#parent-form").on("change", function(){
            $(".select-wrap-child").remove();
            $(".select-wrap-grand").remove();
          });
        })
        .fail(function(){
          console.log("fail");
        })
      }
    });


    $(document).on("change", "#child-form", function(){
      var childrenValue = document.getElementById("child-form").value;
      console.log(childrenValue);

      if (childrenValue != '') {
        $.ajax({
          url: '/products/grandchildren',
          type: "GET",
          data: {
            children_id: childrenValue
          },
          dataType: 'json'
        })

        .done(function(grandchildren){
          console.log("success");
          var insertHTML = '';
          grandchildren.forEach(function(grandchild){
            insertHTML += buildOPTION(grandchild);
          });
          var html = buildGRANDCHILD(insertHTML);
          $('.select-wrap:first').append(html);
          $("#child-form").on("change", function(){
            $(".select-wrap-grand").remove();
          });
        })
        .fail(function(){
          console.log("fail");
        })
      }
    });
  });