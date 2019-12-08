$(function(){
  $("label").on("change", 'input[type="file"]', function(e) {
    var file =  e.target.files[0],
        render =  new FileReader();

    if(file.type.indexOf("image") < 0){
      return false;
    }

    render.onload =(function(file) {
      return function(e){
        $(".preview").empty();

        $(".preview").append($("<img>").attr({
          src: e.target.result,
          width:"130px",
          height:"111px",
          class: "preview__image",
          title: file.name
        }));

        $(".preview").append('<div class="preview__bottom"><div class="preview__edit"><a class="preview__edit--anchor">編集</a></div><div class="preview__delete"><a class="preview__delete--anchor">削除</a></div></div>');
        $(".sell-image").css({"width":"450px", "margin-left": "20px"});

        $(".preview__delete--anchor").on("click", function(){
          $(".preview").children().remove();
          $(".sell-image").css({"width":"620px", "margin-left": "0"});
          $('input[type="file"]').val("");
        });
      };
    })(file);

    render.readAsDataURL(file);

  });


});