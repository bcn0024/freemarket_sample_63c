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

        $(".preview").prepend($("<img>").attr({
                    src: e.target.result,
                    width:"100px",
                    class: "preview-image",
                    title: file.name
        }));

        $(".sell-image").css("width", "500px");
      };
    })(file);

    render.readAsDataURL(file);

  });
});