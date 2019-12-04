# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


list =[
["パーカー","いいパーカーです","300円",0,"大阪","3日","1000"],
["鉛筆","いい鉛筆です","300円",0,"大阪","3日","1500"],
["自転車","いい自転車です","300円",0,"大阪","3日","5000"],
["石鹸","いい石鹸です","300円",0,"大阪","3日","1000"],
["ハンガー","いいハンガーです","300円",0,"大阪","3日","1000"],
["靴","いい靴です","300円",0,"大阪","3日","2000"],
["椅子","いい椅子です","300円",0,"大阪","3日","5000"],
["歯ブラシ","いい歯磨きです","300円",0,"大阪","3日","1000"],
["タオル","いいタオル","300円",0,"大阪","3日","1000"],
["眼鏡","いい眼鏡です","300円",0,"大阪","3日","4000"],
["水筒","いい水筒です","300円",0,"大阪","3日","3000"],
["時計","いい時計です","300円",0,"大阪","3日","10000"]]
list.each do |pro|
  Product.create(name: pro[0],description: pro[1],postage:pro[2],status:pro[3],region:pro[4],arrival_date:pro[5],price:pro[6],size: "M", user_id: 1, brand_id: 0,category_id: 0)
end


image =[
  ["https://img.rococoblog.com/00item/11691c1.jpg",1],
  ["https://img.rococoblog.com/00item/10951_2c2.jpg",1],
  ["https://shop.billabongstore.jp/shop/item/billabong/picture/goods/45180_thumbnail.jpg",1],
  ["https://c.imgz.jp/334/40757334/40757334_18_d_500.jpg",1],
  ["http://c.imgz.jp/586/14432586/14432586_18_D_500.jpg",1],
  ["https://shop.billabongstore.jp/shop/item/billabong/picture/goods/45177_thumbnail.jpg",1],
  ["https://images-na.ssl-images-amazon.com/images/I/51haQ6BeBML._SX466_.jpg",2],
  ["https://www03.easy-myshop.jp/emsrsc/cycle-joy/itemimg/859/big.789.1.jpg",3],
  ["https://file002.shop-pro.jp/PA01367/312/product_img/DIT120.jpg",4],
  ["https://images-na.ssl-images-amazon.com/images/I/71jBIl1ZskL._SX355_.jpg",5],
  ["https://door.abc-mart.net/wp-content/uploads/2017/10/C6FB0F60-C06B-4F53-9194-74C391C9709C-1.jpg",6],
  ["https://shop.r10s.jp/spacelab/cabinet/bbf/grant/grfc-340-1.jpg",7],
  ["https://askul.c.yimg.jp/img/product/LL1/816210_LL1.jpg",8],
  ["https://images-na.ssl-images-amazon.com/images/I/61BV1r9Z%2BpL._SX466_.jpg",9],
  ["https://images-na.ssl-images-amazon.com/images/I/51medYosIoL._UX569_.jpg",10],
  ["https://cache.ymall.jp/webcom/item/multiimage/300/4463658013_001.jpg",11],
  ["https://images-na.ssl-images-amazon.com/images/I/71NElIYC0XL._UX342_.jpg",12]]
image.each do |i|
  Image.create(image: i[0],product_id:i[1])
end