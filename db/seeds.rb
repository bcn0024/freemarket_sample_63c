# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# man_.children.create([{name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}])
# children.create([{name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}])
# {name: ""}, {name: ""}, {name: ""},

woman = Category.create(name: "レディース")

woman_tops = woman.children.create(name: "トップス")
woman_jacket = woman.children.create(name: "ジャケット/アウター")
woman_pants = woman.children.create(name: "パンツ")
woman_skate = woman.children.create(name: "スカート")
woman_onepiece = woman.children.create(name: "ワンピース")
woman_shoes = woman.children.create(name: "靴")
woman_roomwear = woman.children.create(name: "ルームウェア/パジャマ")
woman_legwear = woman.children.create(name: "レッグウェア")
woman_hat = woman.children.create(name: "帽子")
woman_bag = woman.children.create(name: "バッグ")
woman_accessories = woman.children.create(name: "アクセサリー ")
woman_hairaccessories = woman.children.create(name: "ヘアアクセサリー")
woman_small = woman.children.create(name: "小物")
woman_watch = woman.children.create(name: "時計")
woman_wig = woman.children.create(name: "ウィッグ/エクステ")
woman_yukata = woman.children.create(name: "浴衣/水着")
woman_suit = woman.children.create(name: "スーツ/フォーマル/ドレス")
woman_matanity = woman.children.create(name: "マタニティ")
woman_etc = woman.children.create(name: "その他")

woman_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"},  {name: "シャツ/ブラウス(半袖/袖なし)"}, {name: "シャツ/ブラウス(七分/長袖)"}, {name: "ポロシャツ"}, {name: "キャミソール"}, {name: "タンクトップ"}, {name: "ホルターネック"}, {name: "ニット/セーター"}, {name: "チュニック"}, {name: "カーディガン/ボレロ"}, {name: "アンサンブル"}, {name: "ベスト/ジレ"}, {name: "パーカー"}, {name: "トレーナー/スウェット"}, {name: "ベアトップ/チューブトップ"}, {name: "ジャージ"}, {name: "その他"}])
woman_jacket.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"}, {name: "レザージャケット"}, {name: "ダウンジャケット"}, {name: "ライダースジャケット"}, {name: "ミリタリージャケット"}, {name: "ダウンベスト"}, {name: "ジャンパー/ブルゾン"}, {name: "ポンチョ"}, {name: "ロングコート"}, {name: "トレンチコート"}, {name: "ダッフルコート"}, {name: "ピーコート"}, {name: "チェスターコート"}, {name: "モッズコート"}, {name: "スタジャン"}, {name: "毛皮/ファーコート"}, {name: "スピリングコート"}, {name: "スカジャン"}, {name: "その他"}])
woman_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}, {name: "カジュアルパンツ"}, {name: "ハーフパンツ"}, {name: "チノパン"}, {name: "ワークパンツ/カーゴパンツ"}, {name: "クロップドパンツ"}, {name: "サロペット/オーバーオール"}, {name: "オールインワン"}, {name: "サルエルパンツ"}, {name: "ガウチョパンツ"}, {name: "その他"}])
woman_skate.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"}, {name: "キュロット"}, {name: "その他"}])
woman_onepiece.children.create([{name: "ミニワンピース"}, {name: "ひざ丈ワンピース"}, {name: "ロングワンピース"}, {name: "その他"}])
woman_shoes.children.create([{name: "ハイヒール/パンプス"}, {name: "ブーツ"}, {name: "サンダル"}, {name: "スニーカー"}, {name: "ミュール"}, {name: "モカシン"}, {name: "ローファー/革靴"}, {name: "フラットシューズ/バレエシューズ"}, {name: "長靴/レインシューズ"}, {name: "その他"}])
woman_roomwear.children.create([{name: "パジャマ"}, {name: "ルームウェア"}])
woman_legwear.children.create([{name: "ソックス"}, {name: "スパッツ/レギンス"}, {name: "ストッキング/タイツ"}, {name: "レッグウォーマー"}, {name: "その他"}])
woman_hat.children.create([{name: "ニットキャップ/ビーニー"}, {name: "ハット"}, {name: "ハンチング/ベレー帽"}, {name: "キャップ"}, {name: "キャスケット"}, {name: "麦わら帽子"}, {name: "その他"}])
woman_bag.children.create([{name: "ハンドバッグ"}, {name: "トートバッグ"}, {name: "エコバッグ"}, {name: "リュック/バックパック"}, {name: "ボストンバッグ"}, {name: "クラッチバッグ"}, {name: "ポーチ/バニティ"}, {name: "ボディバッグ/ウェストバッグ"}, {name: "マザーズバッグ"}, {name: "メッセンジャーバッグ"}, {name: "ビジネスバッグ"}, {name: "旅行用バッグ/キャリーバッグ"}, {name: "ショップ袋"}, {name: "和装用バッグ"}, {name: "かごバッグ"}, {name: "その他"}])
woman_accessories.children.create([{name: "ネックレス"}, {name: "ブレスレット"}, {name: "バングル/リストバッグ"}, {name: "リング"}, {name: "ピアス(片耳用)"}, {name: "ピアス(両耳用)"}, {name: "イヤリング"}, {name: "アンクレット"}, {name: "ブローチ/コサージュ"}, {name: "チャーム"}, {name: "その他"}])
woman_hairaccessories.children.create([{name: "ヘアゴム/シュシュ"}, {name: "ヘアバンド/カチューシャ"}, {name: "ヘアピン"}, {name: "その他"}])
woman_small.children.create([{name: "長財布"}, {name: "折り財布"}, {name: "コインケース/小銭入れ"}, {name: "名刺入れ/定期入れ"}, {name: "キーケース"}, {name: "キーホルダー"}, {name: "手袋/アームカバー"}, {name: "ハンカチ"}, {name: "ベルト"}, {name: "マフラー/ショール"}, {name: "ストール/スヌード"}, {name: "バンダナ/スカーフ"}, {name: "ネックウォーマー"}, {name: "サスペンダー"}, {name: "サングラス/メガネ"}, {name: "モバイルケース/カバー"}, {name: "手帳"}, {name: "イヤマフラー"}, {name: "傘"}, {name: "レインコート/ポンチョ"}, {name: "ミラー"}, {name: "タバコグッズ"}, {name: "その他"}])
woman_watch.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"}, {name: "レザーベルト"}, {name: "金属ベルト"}, {name: "その他"}])
woman_wig.children.create([{name: "前髪ウィッグ"}, {name: "ロングストレート"}, {name: "ロングカール"}, {name: "ショートストレート"}, {name: "ショートカール"}, {name: "その他"} ])
woman_yukata.children.create([{name: "浴衣"}, {name: "着物"}, {name: "振袖"}, {name: "長襦袢/半襦袢"}, {name: "水着セパレート"}, {name: "水着ワンピース"}, {name: "水着スポーツ用"}, {name: "その他"}])
woman_suit.children.create([{name: "スカートスーツ上下"}, {name: "パンツスーツ上下"}, {name: "ドレス"}, {name: "パーティーグッズ"}, {name: "シューズ"}, {name: "ウェディング"}, {name: "その他"}])
woman_matanity.children.create([{name: "トップス"}, {name: "アウター"}, {name: "インナー"}, {name: "ワンピース"}, {name: "パンツ/スパッツ"}, {name: "パジャマ"}, {name: "授乳服"}, {name: "その他"}])
woman_etc.children.create([{name: "コスプレ"}, {name: "下着"}, {name: "その他"}])






man = Category.create(name: "メンズ")

man_tops = man.children.create(name: "トップス")
man_jacket = man.children.create(name: "ジャケット/アウター")
man_pants = man.children.create(name: "パンツ")
man_shoes = man.children.create(name: "靴")
man_bag = man.children.create(name: "バッグ")
man_suit = man.children.create(name: "スーツ")
man_hat = man.children.create(name: "帽子")
man_accessories = man.children.create(name: "アクセサリー ")
man_small = man.children.create(name: "小物")
man_watch = man.children.create(name: "時計")
man_swimwear = man.children.create(name: "水着")
man_legwear = man.children.create(name: "レッグウェア")
man_underwear = man.children.create(name: "アンダーウェア")
man_etc = man.children.create(name: "その他")

man_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "シャツ"}, {name: "ポロシャツ"}, {name: "タンクトップ"}, {name: "ニット/セーター"}, {name: "パーカー"}, {name: "カーディガン"}, {name: "スウェット"}, {name: "ジャージ"}, {name: "ベスト"}, {name: "その他"}])
man_jacket.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"}, {name: "レザージャケット"}, {name: "ダウンジャケット"}, {name: "ライダースジャケット"}, {name: "ミリタリージャケット"}, {name: "ナイロンジャケット"}, {name: "フライトジャケット"}, {name: "ダッフルコート"}, {name: "ピーコート"}, {name: "ステンカラーコート"}, {name: "トレンチコート"}, {name: "モッズコート"}, {name: "チェスターコート"}, {name: "スタジャン"},{name: "スカジャン"}, {name: "ブルゾン"}, {name: "マウンテンパーカー"}, {name: "ダウンポンチョ"}, {name: "ポンチョ"}, {name: "カバーオール"}, {name: "その他"}])
man_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ワークパンツ/カーゴパンツ"}, {name: "スラックス"}, {name: "チノパン"}, {name: "ショートパンツ"}, {name: "ペインターパンツ"}, {name: "サルエルパンツ"}, {name: "オーバーオール"},{name: "その他"}])
man_shoes.children.create([{name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}, {name: "モカシン"}, {name: "ドレス/ビジネス"}, {name: "長靴/レインシューズ"}, {name: "デッキシューズ"}, {name: "その他"}])
man_bag.children.create([{name: "ショルダーバッグ"}, {name: "トートバッグ"},   {name: "ボストンバッグ"}, {name: "リュック/バックパック"}, {name: "ウェストポーチ"}, {name: "ボディバッグ"}, {name: "ドラムバッグ"}, {name: "ビジネスバッグ"}, {name: "トラベルバッグ"},{name: "メッセンジャーバッグ"}, {name: "エコバッグ"}, {name: "その他"}])
man_suit.children.create([{name: "スーツジャケット"}, {name: "スーツベスト"}, {name: "スラックス"}, {name: "セットアップ"}, {name: "その他"}])
man_hat.children.create([{name: "キャップ"}, {name: "ハット"}, {name: "ニットキャップ/ビーニー"}, {name: "ハンチング/ベレー帽"}, {name: "キャスケット"}, {name: "サンバイザー"}, {name: "その他"}])
man_accessories.children.create([{name: "ネックレス"}, {name: "ブレスレット"}, {name: "バングル/リストバッグ"}, {name: "リング"}, {name: "ピアス(片耳用)"}, {name: "ピアス(両耳用)"}, {name: "アンクレット"}, {name: "その他"}])
man_small.children.create([{name: "長財布"}, {name: "折り財布"}, {name: "マネーグリップ"}, {name: "コインケース/小銭入れ"}, {name: "名刺入れ/定期入れ"}, {name: "キーケース"}, {name: "キーホルダー"}, {name: "ネクタイ"}, {name: "ハンカチ"}, {name: "ハンカチ"}, {name: "ベルト"}, {name: "マフラー"}, {name: "ストール"}, {name: "バンダナ"}, {name: "ネックウォーマー"}, {name: "サスペンダー"}, {name: "ウォレットチェーン"}, {name: "サングラス/メガネ"}, {name: "モバイルケース/カバー"}, {name: "手帳"}, {name: "ストラップ"}, {name: "ネクタイピン"}, {name: "カフリンクス"}, {name: "イヤマフラー"}, {name: "傘"}, {name: "レインコート"}, {name: "ミラー"}, {name: "タバコグッズ"}, {name: "その他"}])
man_watch.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"}, {name: "レザーベルト"}, {name: "金属ベルト"}, {name: "その他"}])
man_swimwear.children.create([{name: "一般水着"}, {name: "スポーツ用"}, {name: "アクセサリー"}, {name: "その他"}])
man_legwear.children.create([{name: "ソックス"}, {name: "レギンス/スパッツ"}, {name: "レッグウォーマー"}, {name: "その他"}])
man_underwear.children.create([{name: "トランクス"}, {name: "ボクサーパンツ"}, {name: "その他"} ])
man_etc.children.create([{name: "その他"}])







baby = Category.create(name: "ベビー・キッズ")

baby_girl_cloth_95 = baby.children.create(name: "ベビー服(女の子用)~95cm")
baby_boy_cloth_95 = baby.children.create(name: "ベビー服(男の子用)~95cm")
baby_cloth_95 = baby.children.create(name: "ベビー服(男女兼用)~95cm")
kids_girl_cloth_100 = baby.children.create(name: "キッズ服(女の子用)~100cm")
kids_boy_cloth_100= baby.children.create(name: "キッズ服(男の子用)~100cm")
kids_cloth_100 = baby.children.create(name: "キッズ服(男女兼用)~100cm")
baby_shoes = baby.children.create(name: "キッズ靴")
baby_small = baby.children.create(name: "子ども用ファッション小物")
baby_toilet = baby.children.create(name: "オムツ/トイレ/バス")
baby_movement = baby.children.create(name: "外出/移動用品")
baby_meal = baby.children.create(name: "授乳/食事")
baby_furniture = baby.children.create(name: "ベビー家具/寝具/家内用品")
baby_toy = baby.children.create(name: "おもちゃ")
baby_event = baby.children.create(name: "行事/記念品")
baby_etc = baby.children.create(name: "その他")

baby_girl_cloth_95.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "スカート"}, {name: "ワンピース"}, {name: "ベビードレス"}, {name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
baby_boy_cloth_95.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"},{name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
baby_cloth_95.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"},{name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
kids_girl_cloth_100.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"}, {name: "トップス(チュニック)"}, {name: "トップス(タンクトップ)"}, {name: "トップス(その他)"}, {name: "スカート"}, {name: "パンツ"}, {name: "ワンピース"}, {name: "セットアップ"}, {name: "パジャマ"}, {name: "フォーマル/ドレス"}, {name: "和服"}, {name: "浴衣"}, {name: "甚平"}, {name: "水着"}, {name: "その他"}])
kids_boy_cloth_100.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"}, {name: "トップス(その他)"}, {name: "パンツ"}, {name: "セットアップ"}, {name: "パジャマ"}, {name: "フォーマル/ドレス"}, {name: "和服"}, {name: "浴衣"}, {name: "甚平"}, {name: "水着"}, {name: "その他"}])
kids_cloth_100.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(その他)"}, {name: "ボトムス"}, {name: "パジャマ"}, {name: "その他"}])
baby_shoes.children.create([{name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}, {name: "長靴"}, {name: "その他"}])
baby_small.children.create([{name: "靴下/スパッツ"}, {name: "帽子"}, {name: "エプロン"}, {name: "サスペンダー"}, {name: "タイツ"}, {name: "ハンカチ"}, {name: "バンダナ"}, {name: "ベルト"}, {name: "マフラー"}, {name: "傘"}, {name: "手袋"},  {name: "スタイ"}, {name: "バッグ"}, {name: "その他"}])
baby_toilet.children.create([{name: "おむつ用品"}, {name: "おまる/補助便座"}, {name: "トレーニングパンツ"}, {name: "ベビーパンツ"}, {name: "お風呂用品"}, {name: "その他"}])
baby_movement.children.create([{name: "ベビーカー"}, {name: "抱っこひも/スリング"}, {name: "チャイルドシート"}, {name: "その他"}])
baby_meal.children.create([{name: "ミルク"}, {name: "ベビーフード"}, {name: "ベビー用食器"}, {name: "その他"}])
baby_furniture.children.create([{name: "ベッド"}, {name: "布団/毛布"}, {name: "イス"}, {name: "たんす"}, {name: "その他"}])
baby_toy.children.create([{name: "おふろのおもちゃ"}, {name: "がらがら"}, {name: "オルゴール"}, {name: "ベビージム"}, {name: "手押し車/カタカタ"}, {name: "知育玩具"}, {name: "その他"}])
baby_event.children.create([{name: "お宮参り用品"}, {name: "お食い始め用品"}, {name: "アルバム"}, {name: "手形/足形"}, {name: "その他"}])
baby_etc.children.create([{name: "母子手帳用品"}, {name: "その他"}])



























