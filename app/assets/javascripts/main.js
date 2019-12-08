$(function(){
  $("label").on("change", 'input[type="file"]', function(e) {
    console.log("hello");
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
          width:"100px",
          class: "preview__image",
          title: file.name

        }));

        $(".preview").append('<div class="preview__bottom"><div class="preview__edit">編集</div><div class="preview__delete">削除</div></div>');

        $(".sell-image").css("width", "500px");
      };
    })(file);

    render.readAsDataURL(file);

  });
});