$(function(){


  function buildOPTION(child){
    var html = `<option value="${child.id}">${child.name}</option>`;
    return html;
  }

  function buildCHILD(insertHTML) {
    var html = `<div class="select-wrap-child">
                  <i class="fas fa-chevron-down"></i>
                  <select class="select-default" id="child-form" name="child">
                    <option value="">---</option>
                    ${insertHTML}
                  </select>
                </div>
              `
    return html;
  }

  function buildGRANDCHILD(insertHTML) {
    var html = `
                <div class="select-wrap-grand">
                  <i class="fas fa-chevron-down"></i>
                  <select class="select-default" id="grandchild-form" name="product[category_id]">
                    <option value="">---</option>
                    ${insertHTML}
                  </select>
                </div>
              `
    return html;
  }

  $("#parent-form").on("change", function(){
    console.log("aaa");
    var parentValue = document.getElementById("parent-form").value;
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
        var insertHTML = '';
        children.forEach(function(child){
          insertHTML += buildOPTION(child);
        });
        var html = buildCHILD(insertHTML);
        $('.select-wrap:first').append(html);
        $("#parent-form").on("change", function(){
          $(".select-wrap-child").remove();
          $(".select-wrap-grand").remove();
          $(".select-brand-box").hide();
        });
        $("#child-form").on("change", function(){
          console.log("hello");
          var childrenValue = document.getElementById("child-form").value;
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
              var length = grandchildren.length

              if (length == 0) {
                $('select[name="child"]').attr('name', 'product[category_id]')
              } else {
                var insertHTML = '';
                grandchildren.forEach(function(grandchild){
                  insertHTML += buildOPTION(grandchild);
                });
                var html = buildGRANDCHILD(insertHTML);
                $('.select-wrap:first').append(html);
                $("#grandchild-form").on("change", function(){
                  $('.select-brand-box').css("display", "block");
                });
              }
              $("#child-form").on("change", function(){
                $(".select-wrap-grand").remove();
                $(".select-brand-box").hide();
              });
            })
            .fail(function(){
              alert('カテゴリー取得に失敗しました');
            })
          }
        });
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }
  });
});