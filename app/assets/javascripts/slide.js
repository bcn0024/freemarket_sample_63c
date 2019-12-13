// //最初にどのスライドから表示するかを選択
// var currentItemNum = 1;

// var $slideContainer = $('.top-main');

// //クラスslider__itemの要素の個数を算出
// var slideItemNum = $('.header-image').length;

// //スタイド１つあたりの横幅を算出
// var slideItemWidth = $('.header-image').innerWidth();

// //スライド１つあたりの横幅とスライドの個数から
// var slideContainerWidth = slideItemWidth * slideItemNum;

// //スライドさせる速さ(animateメソッド用)
// var DURATION = 1000;

// //横に並べた複数のスライドを格納する用コンテナの横幅を設定
// $slideContainer.attr('style', 'width:' + slideContainerWidth + 'px');

// //スライドを自動的に変化させる関数
// function autoSlide(){
//     //現在のスライドの番号が全部のスライドの数より少ないとき
//     if(currentItemNum < slideItemNum){
//         //スライド用コンテナをanimateメソッドで変化させる
//         $slideContainer.animate({left: '-='+slideItemWidth+'px'}, DURATION);//現在のCSSのleftのプロパティの値からスライド１つあたりの横幅分変化させる
//         currentItemNum++;//現在のスライド番号を１増やす
//     //現在のスライドの番号が全部のスライドの数と同じとき
//     }else if(currentItemNum = slideItemNum){
//         //現在のCSSのleftのプロパティの値を変更(徐々に変化させないのでanimateメソッドは使わない)
//         $slideContainer.css('left', '+='+slideItemWidth*(slideItemNum-1)+'px');
//         currentItemNum = 1;//現在のスライド番号を１に戻す
//     }
// }

// //setInterval関数で適当な秒数ごとに実施
// setInterval(autoSlide, 5000);

$('.top-main').slick({
    // アクセシビリティ。左右ボタンで画像の切り替えをできるかどうか
    accessibility: true,
    // 自動再生。trueで自動再生される。
    autoplay: false,
    // 自動再生で切り替えをする時間
    autoplaySpeed: 3000,
    // 自動再生や左右の矢印でスライドするスピード
    speed: 400,
    // 自動再生時にスライドのエリアにマウスオンで一時停止するかどうか
    pauseOnHover: true,
    // 自動再生時にドットにマウスオンで一時停止するかどうか
    pauseOnDotsHover: true,
    // 切り替えのアニメーション。ease,linear,ease-in,ease-out,ease-in-out
    cssEase: 'ease',
    // 画像下のドット（ページ送り）を表示
    dots: false,
    // ドットのclass名をつける
    dotsClass: 'dot-class',
    // ドラッグができるかどうか
    draggable: true,
    // 切り替え時のフェードイン設定。trueでon
    fade: false,
    // 左右の次へ、前へボタンを表示するかどうか
    arrows: true,
    // 無限スクロールにするかどうか。最後の画像の次は最初の画像が表示される。
    infinite: true,
    // 最初のスライダーの位置
    initialSlide: 0,
    // 画像の遅延表示。‘ondemand’or'progressive'
    lazyLoad: 'ondemand',
    // スライドのエリアにマウスオーバーしている間、自動再生を止めるかどうか。
    pauseOnHover: true
    // スライドのエリアに画像がいくつ表示されるかを指定
    slidesToShow: 4,
    // 一度にスライドする数
    slidesToScroll: 1,
    // タッチスワイプに対応するかどうか
    swipe: true,
    // 縦方向へのスライド
    vertical: false,
    // 表示中の画像を中央へ
    centerMode: true,
    // 中央のpadding
    centerPadding: '160px'
  });