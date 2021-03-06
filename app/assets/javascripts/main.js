$(function(){
  var intervalId;
  setTimer();

  function setTimer(){
    intervalId = setInterval(autoClick, 5000);
  }

  function autoClick() {
    $(".slide").children("a.next").click();
  }

  function changeImage($click){
    var $current = $click.siblings(".container").children(".current");
    var $new;
    var findSelector = "";

    if($click.hasClass("next")){
      $new = $current.next();
      findSelector = ":first-child";
    } else {
      $new = $current.prev();
      findSelector = ":last-child"
    }

    if($new.length == 0) {
      $new = $current.siblings(findSelector);
    }
    $current.removeClass("current");
    $new.addClass("current");
    setTimer();
  }

  $(".slide").on("click", "> a", function(e){
    e.preventDefault();
    e.stopPropagation();
    clearInterval(intervalId);
    changeImage($(this));
  });

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
          var val = $('input[type="file"]').val();
          console.log(val);
          $(".preview").children().remove();
          $(".sell-image").css({"width":"620px", "margin-left": "0"});
          $('input[type="file"]').val("");
          var val = $('input[type="file"]').val();
          console.log(val);
        });


        // $(".preview__delete--anchor").on("click", function(){
        //   console.log("hello");
        //   $(".preview").children().remove();
        //   $(".sell-image.edit").css({"width":"620px", "margin-left": "0"});
        //   $('input[type="file"]').val("");
        // });
      };
    })(file);


    render.readAsDataURL(file);
  });

  $(".preview__delete--anchor").on("click", function(){
    var val = $('input[type="file"]').val();
    console.log(val);
    $(".preview").children().remove();
    $(".sell-image.edit").css({"width":"620px", "margin-left": "0"});
    $('input[type="file"]').val("");
    var val = $('input[type="file"]').val();
    console.log(val);
  });


  $("#price_form").on("keyup", function() {
    var price = $("#price_form").val();
    Number(price);
    if(price <= 9999999 && price >= 300) {
      var fee = price * 0.1;
      var profit = price - fee;
      $(".l-right-fee").text("¥" + fee);
      $(".l-right-profit").text("¥" + profit);
    } else {
      $(".l-right-fee").text("ー");
      $(".l-right-profit").text("ー");
    }
  });

  $(".postage").on("change", function(){
    $('.delibery').css("display", "block");
  });
});