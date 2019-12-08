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
          width:"130px",
          height:"111px",
          class: "preview__image",
          title: file.name

        }));

        $(".preview").append('<div class="preview__bottom"><div class="preview__edit"><a>編集</a></div><div class="preview__delete"><a>削除</a></div></div>');

        $(".sell-image").css({"width":"450px", "margin-left": "20px"});
      };
    })(file);

    render.readAsDataURL(file);

  });
});