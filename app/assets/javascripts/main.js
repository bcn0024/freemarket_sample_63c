$(function(){
  $(window).load(function() {
    var img = $(".slideshow").children("img"), // 画像を取得
      num = img.length, // 画像の数を数える
      count = 0, // 現在何枚目を表示しているかのカウンター
      interval = 5000; // 次の画像に切り替わるまでの時間(1/1000秒)

    img.eq(0).addClass("show"); // 最初の画像にshowクラス付与

    setTimeout(slide, interval); // slide関数をタイマーセット

    function slide() {
      img.eq(count).removeClass("show"); // 現在表示している画像からshowクラスを取り除く
      count++; // カウンターを一個進める
      if(count >= num) {
        count = 0; // カウンターが画像の数より大きければリセット
      }
      img.eq(count).addClass("show"); // 次の画像にshowクラス付与
      setTimeout(slide, interval); // 再びタイマーセット
    }
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