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

# レディース

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




# メンズ

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




# ベビー・キッズ


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




# インテリア・住まい・小物

house = Category.create(name: "インテリア・住まい・小物")

house_kitchen = house.children.create(name: "キッチン/食器")
house_bed = house.children.create(name: "ベッド/マットレス")
house_sofa = house.children.create(name: "ソファ/ソファベッド")
house_chair = house.children.create(name: "椅子/チェア")
house_table = house.children.create(name: "机/テーブル")
house_furniture = house.children.create(name: "収納")
house_mat = house.children.create(name: "ラグ/カーペット/マット")
house_curtain = house.children.create(name: "カーテン/ブラインド")
house_light = house.children.create(name: "ライト/照明")
house_sleep = house.children.create(name: "寝具")
house_small = house.children.create(name: "インテリア小物 ")
house_season = house.children.create(name: "季節/年中行事")
house_etc = baby.children.create(name: "その他")


house_kitchen.children.create([{name: "食器"}, {name: "調理器具"}, {name: "収納/キッチン雑貨"}, {name: "弁当用品"}, {name: "カトラリー(スプーン等)"}, {name: "テーブル用品"}, {name: "容器"}, {name: "エプロン"}, {name: "アルコールグッズ"}, {name: "浄水器"}, {name: "その他"}])
house_bed.children.create([{name: "セミシングルベッド"}, {name: "シングルベッド"}, {name: "セミダブルベッド"}, {name: "ダブルベッド"}, {name: "ワイドダブルベッド"}, {name: "クイーンベッド"}, {name: "キングベッド"}, {name: "脚付きマットレスベッド"}, {name: "マットレス"}, {name: "すのこベッド"}, {name: "ロフトベッド/システムベッド"}, {name: "簡易ベッド/折りたたみベッド"}, {name: "収納付き"}, {name: "その他"}])
house_sofa.children.create([{name: "ソファセット"},{name: "シングルソファ"},{name: "ラブソファ"},{name: "トリプルソファ"},{name: "オットマン"},{name: "コーナーソファ"},{name: "ビーズソファ/クッションソファ"},{name: "ローソファ/フロアソファ"},{name: "ソファベッド"},{name: "応接セット"},{name: "ソファカバー"},{name: "リクライニングソファ"},{name: "その他"}])
house_chair.children.create([{name: "一般"},{name: "スツール"},{name: "ダイニングチェア"},{name: "ハイバックチェア"},{name: "ロッキングチェア"},{name: "座椅子"},{name: "折り畳みイス"},{name: "デスクチェア"},{name: "その他"}])
house_table.children.create([{name: "こたつ"},{name: "カウンターテーブル"},{name: "サイドテーブル"},{name: "センターテーブル"},{name: "ダイニングテーブル"},{name: "座卓/ちゃぶ台"},{name: "アウトドア用"},{name: "パソコン用"},{name: "事務机/学習机"},{name: "その他"},])
house_furniture.children.create([{name: "リビング収納"},{name: "キッチン収納"},{name: "玄関/屋外収納"},{name: "バス/トイレ収納"},{name: "本収納"},{name: "本/CD/DVD収納"},{name: "洋服タンス/押入れ収納"},{name: "電話台/ファックス台"},{name: "ドレッサー/鏡台"},{name: "棚/ラック"},{name: "ケース/ボックス"},{name: "その他"}])
house_mat.children.create([{name: "ラグ"}, {name: "カーペット"}, {name: "ホットカーペット"}, {name: "玄関/キッチンマット"}, {name: "トイレ/バスマット"}, {name: "その他"}])
house_curtain.children.create([{name: "カーテン"},{name: "ブラインド"},{name: "ロールスクリーン"},{name: "のれん"},{name: "その他"}])
house_light.children.create([{name: "蛍光灯/電球"},{name: "天井照明"},{name: "フロアスタンド"},{name: "その他"}])
house_sleep.children.create([{name: "布団/毛布"},{name: "枕"},{name: "シーツ/カバー"},{name: "その他"}])
house_small.children.create([{name: "ごみ箱"},{name: "ウェルカムボード"},{name: "オルゴール"},{name: "クッション"},{name: "クッションカバー"},{name: "スリッパラック"},{name: "ティッシュボックス"},{name: "バスケット/かご"},{name: "フォトフレーム"},{name: "マガジンラック"},{name: "モビール"},{name: "花瓶"},{name: "灰皿"},{name: "傘立て"},{name: "小物入れ"},{name: "置時計"},{name: "掛時計/柱時計"},{name: "鏡(立て掛け式)"},{name: "鏡(壁掛け式)"},{name: "置物"},{name: "風鈴"},{name: "植物/観葉植物"},{name: "その他"}])
house_season.children.create([{name: "正月"},{name: "成人式"},{name: "バレンタインデー"},{name: "ひな祭り"},{name: "子どもの日"},{name: "母の日"},{name: "父の日"},{name: "サマーギフト/お中元"},{name: "夏/夏休み"},{name: "ハロウィン"},{name: "敬老の日"},{name: "七五三"},{name: "お歳暮"},{name: "クリスマス"},{name: "冬一般"},{name: "その他"},])


#本・音楽・ゲーム

enjoyment = Category.create(name: "本・音楽・ゲーム")

enjoyment_book = enjoyment.children.create(name: "本")
enjoyment_manga = enjoyment.children.create(name: "漫画")
enjoyment_magazine = enjoyment.children.create(name: "雑誌")
enjoyment_cd = enjoyment.children.create(name: "CD")
enjoyment_dvd = enjoyment.children.create(name: "DVD/ブルーレイ")
enjoyment_record = enjoyment.children.create(name: "レコード")
enjoyment_tvgame = enjoyment.children.create(name: "テレビゲーム")


enjoyment_book.children.create([{name: "文学/小説"}, {name: "人文/社会"}, {name: "ノンフィクション/教養"}, {name: "地図/旅行ガイド"}, {name: "ビジネス/経済"}, {name: "健康/医学"}, {name: "コンピュータ/IT"}, {name: "趣味/スポーツ/実用"}, {name: "住まい/暮らし/子育て"}, {name: "アート/エンタメ"}, {name: "洋書"}, {name: "絵本"}, {name: "参考書"}, {name: "その他"}])
enjoyment_manga.children.create([{name: "全巻セット"}, {name: "少年漫画"}, {name: "少女漫画"}, {name: "青年漫画"}, {name: "女性漫画"}, {name: "同人誌"}, {name: "その他"}])
enjoyment_magazine.children.create([{name: "アート/エンタメ/ホビー"}, {name: "ファッション"}, {name: "ニュース/総合"}, {name: "趣味/スポーツ"}, {name: "その他"}])
enjoyment_cd.children.create([{name: "邦楽"}, {name: "洋楽"}, {name: "アニメ"}, {name: "クラシック"}, {name: "K-POP/アジア"}, {name: "キッズ/ファミリー"}, {name: "その他"}])
enjoyment_dvd.children.create([{name: "外国映画"}, {name: "日本映画"}, {name: "アニメ"}, {name: "TVドラマ"}, {name: "ミュージック"}, {name: "お笑い/バラエティ"}, {name: "スポーツ/フィットネス"}, {name: "キッズ/ファミリー"}, {name: "その他"}])
enjoyment_record.children.create([{name: "邦楽"}, {name: "洋楽"}, {name: "その他"}])
enjoyment_tvgame.children.create([{name: "家庭用ゲーム本体"}, {name: "家庭用ゲームソフト"}, {name: "携帯用ゲーム本体"}, {name: "携帯用ゲームソフト"}, {name: "PCゲーム"}, {name: "その他"},])


# おもちゃ・ホビー・グッズ

toys = Category.create(name: "おもちゃ・ホビー・グッズ")

toys_toy = toys.children.create(name: "おもちゃ")
toys_talentgoods = toys.children.create(name: "タレントグッズ")
toys_comic = toys.children.create(name: "コミック/アニメグッズ")
toys_card = toys.children.create(name: "トレーディングカード")
toys_doll = toys.children.create(name: "フィギュア")
toys_instrument = toys.children.create(name: "楽器/器材")
toys_collection = toys.children.create(name: "コレクション")
toys_miritary = toys.children.create(name: "ミリタリー")
toys_art = toys.children.create(name: "美術品")
toys_art_goods = toys.children.create(name: "アート用品")
toys_etc = toys.children.create(name: "その他")


toys_toy.children.create([{name: "キャラクターグッズ"},  {name: "ぬいぐるみ"},  {name: "小物/アクセサリー"},  {name: "模型/プラモデル"},  {name: "ミニカー"},  {name: "トイラジコン"},  {name: "プラモデル"},  {name: "ホビーラジコン"},  {name: "鉄道模型"},  {name: "その他"}])
toys_talentgoods.children.create([{name: "アイドル"},  {name: "ミュージシャン"},  {name: "タレント/お笑い芸人"},  {name: "スポーツ選手"},  {name: "その他"}])
toys_comic.children.create([{name: "ストラップ"}, {name: "キーホルダー"}, {name: "バッジ"}, {name: "カード"}, {name: "クリアファイル"}, {name: "ポスター"}, {name: "タオル"}, {name: "その他"}])
toys_card.children.create([{name: "遊戯王"},  {name: "マジック：ザ・ギャザリング"},  {name: "ポケモンカードゲーム"},  {name: "デュエルマスターズ"},  {name: "バトルスピリッツ"},  {name: "プリパラ"},  {name: "アイカツ"},  {name: "カードファイト!! ヴァンガード"},  {name: "ヴァイスシュヴァルツ"},  {name: "プロ野球オーナーズリーグ"},  {name: "ベースボールヒーローズ"},  {name: "ドラゴンボール"},  {name: "スリーブ"},  {name: "その他"}])
toys_doll.children.create([{name: "コミック/アニメ"},  {name: "特撮"},  {name: "ゲームキャラクター"},  {name: "SF/ファンタジー/ホラー"},  {name: "アメコミ"},  {name: "スポーツ"},  {name: "ミリタリー"},  {name: "その他"}])
toys_instrument.children.create([{name: "エレキギター"},  {name: "アコースティックギター"},  {name: "ベース"},  {name: "エフェクター"},  {name: "アンプ"},  {name: "弦楽器"},  {name: "管楽器"},  {name: "鍵盤楽器"},  {name: "打楽器"},  {name: "和楽器"},  {name: "楽譜/スコア"},  {name: "レコーディング/PA機器"},  {name: "DJ機器"},  {name: "DTM/DAW"}, {name: "その他"}])
toys_collection.children.create([{name: "武具"},  {name: "使用済切手/官製はがき"},  {name: "旧貨幣/金貨/銀貨/記念硬貨"},  {name: "印刷物"},  {name: "ノベルティグッズ"},  {name: "その他"}])
toys_miritary.children.create([{name: "トイガン"},  {name: "個人装備"},  {name: "その他"}])
toys_art.children.create([{name: "陶芸"},  {name: "ガラス"},  {name: "漆芸"},  {name: "金属工芸"},  {name: "絵画/タペストリ"},  {name: "版画"},  {name: "彫刻/オブジェクト"}, {name: "書"},  {name: "写真"},  {name: "その他"}])
toys_art_goods.children.create([{name: "画材"},  {name: "額縁"},  {name: "その他"}])
toys_etc.children.create([{name: "トランプ/UNO"},  {name: "カルタ/百人一首"},  {name: "ダーツ"},  {name: "ビリヤード"},  {name: "麻雀"},  {name: "パズル/ジグソーパズル"},  {name: "囲碁/将棋"},  {name: "オセロ/チェス"},  {name: "人生ゲーム"},  {name: "野球/サッカーゲーム"},  {name: "スポーツ"},  {name: "三輪車/乗り物"},  {name: "ヨーヨー"},  {name: "模型製作用品"},  {name: "鉄道"},  {name: "航空機"},  {name: "アマチュア無線"},  {name: "パチンコ/パチスロ"},  {name: "その他"}])




# コスメ・香水・美容

cosmetic = Category.create(name: "コスメ・香水・美容")

cosmetic_basemake = cosmetic.children.create(name: "ベースメイク")
cosmetic_makeup = cosmetic.children.create(name: "メイクアップ")
cosmetic_nail = cosmetic.children.create(name: "ネイルケア")
cosmetic_smell = cosmetic.children.create(name: "香水")
cosmetic_skin = cosmetic.children.create(name: "スキンケア/基礎化粧水")
cosmetic_haircare = cosmetic.children.create(name: "ヘアケア")
cosmetic_body = cosmetic.children.create(name: "ボディけケア")
cosmetic_oral = cosmetic.children.create(name: "オーラルケア")
cosmetic_relax = cosmetic.children.create(name: "リラクゼーション")
cosmetic_diet = cosmetic.children.create(name: "ダイエット")
cosmetic_etc = toys.children.create(name: "その他")

cosmetic_basemake.children.create([{name: "ファンデーション"}, {name: "化粧下地"}, {name: "コントロールカラー"}, {name: "BBクリーム"}, {name: "CCクリーム"}, {name: "コンシーラー"}, {name: "フェイスパウダー"}, {name: "トライアルセット/サンプル"}, {name: "その他"}])
cosmetic_makeup.children.create([{name: "アイシャドウ"}, {name: "口紅"}, {name: "リップグロス"}, {name: "リップライナー"}, {name: "チーク"}, {name: "フェイスカラー"}, {name: "マスカラ"}, {name: "アイライナー"}, {name: "つけまつげ"}, {name: "アイブロウペンシル"}, {name: "パウダーアイブロウ"}, {name: "眉マスカラ"}, {name: "トライアルセット/サンプル"}, {name: "メイク道具/化粧小物"}, {name: "美顔用品/美顔ローラー"}, {name: "その他"}])
cosmetic_nail.children.create([{name: "ネイルカラー"}, {name: "カラージェル"}, {name: "ネイルベースコート/トップコート"}, {name: "ネイルアート用品"}, {name: "ネイルパーツ"}, {name: "ネイルチップ/付け爪"}, {name: "手入れ用具"}, {name: "除光液"}, {name: "その他"}])
cosmetic_smell.children.create([{name: "香水(女性用)"}, {name: "香水(男性用)"}, {name: "ユニセックス"}, {name: "ボディミスト"}, {name: "その他"}])
cosmetic_skin.children.create([{name: "化粧水/ローション"}, {name: "乳液/ミルク"}, {name: "美容液"}, {name: "フェイスクリーム"}, {name: "洗顔料"}, {name: "クレンジング/メイク落とし"}, {name: "パック/フェイスマスク"}, {name: "ジェル/ゲル"}, {name: "ブースター/導入液"}, {name: "アイケア"}, {name: "リップケア"}, {name: "トライアルセット/サンプル"}, {name: "洗顔グッズ"}, {name: "その他"}])
cosmetic_haircare.children.create([{name: "シャンプー"}, {name: "トリートメント"}, {name: "コンディショナー"}, {name: "リンス"}, {name: "スタイリング剤"}, {name: "カラーリング剤"}, {name: "ブラシ"}, {name: "その他"}])
cosmetic_body.children.create([{name: "オイル/クリーム"}, {name: "ハンドクリーム"}, {name: "ローション"}, {name: "日焼け止め/サンオイル"}, {name: "ボディソープ"}, {name: "入浴剤"}, {name: "制汗/デオドラント"}, {name: "フットケア"}, {name: "その他"}])
cosmetic_oral.children.create([{name: "口臭防止/エチケット用品"}, {name: "歯ブラシ"}, {name: "その他"}])
cosmetic_relax.children.create([{name: "エッセンシャルオイル"}, {name: "芳香器"}, {name: "お香/香炉"}, {name: "キャンドル"}, {name: "リラクゼーショングッズ"}, {name: "その他"}])
cosmetic_diet.children.create([{name: "ダイエット食品"}, {name: "エクササイズ用品"}, {name: "体重計"}, {name: "体脂肪計"}, {name: "その他"}])
cosmetic_etc.children.create([{name: "健康用品"}, {name: "看護/介護用品"}, {name: "救急/衛生用品"}, {name: "その他"}])


# 家電・スマホ・カメラ

devise = Category.create(name: "家電・スマホ・カメラ")

devise_smartphone = devise.children.create(name: "家電・スマホ・カメラ")
devise_smartaccesary = devise.children.create(name: "スマホアクセサリー")
devise_pc = devise.children.create(name: "PC/タブレット")
devise_camera = devise.children.create(name: "カメラ")
devise_tv = devise.children.create(name: "テレビ/映像機器")
devise_ordio = devise.children.create(name: "オーディオ機器")
devise_health = devise.children.create(name: "美容/健康")
devise_aircondition = devise.children.create(name: "冷暖房/空調")
devise_life = devise.children.create(name: "生活家電")
devise_etc = devise.children.create(name: "その他")


devise_smartphone.children.create([{name: "スマートフォン本体"}, {name: "バッテリー/充電器"}, {name: "携帯電話本体"}, {name: "PHS本体"}, {name: "その他"}])
devise_smartaccesary.children.create([{name: "Android用ケース"}, {name: "iPhone用ケース"}, {name: "カバー"}, {name: "イヤホンジャック"}, {name: "ストラップ"}, {name: "フィルム"}, {name: "自撮り棒"}, {name: "その他"}])
devise_pc.children.create([{name: "タブレット"}, {name: "ノートPC"}, {name: "デスクトップ型PC"}, {name: "ディスプレイ"}, {name: "電子ブックリーダー"}, {name: "PC周辺機器"}, {name: "PCパーツ"}, {name: "その他"}])
devise_camera.children.create([{name: "デジタルカメラ"}, {name: "ビデオカメラ"}, {name: "レンズ(単焦点)"}, {name: "レンズ(ズーム)"}, {name: "フィルムカメラ"}, {name: "防犯カメラ"}, {name: "その他"}])
devise_tv.children.create([{name: "テレビ"}, {name: "プロジェクター"}, {name: "ブルーレイレコーダー"}, {name: "DVDレコーダー"}, {name: "ブルーレイプレーヤー"}, {name: "DVDプレーヤー"}, {name: "映像用ケーブル"}, {name: "その他"}])
devise_ordio.children.create([{name: "ポータブルプレーヤー"}, {name: "イヤフォン"}, {name: "ヘッドフォン"}, {name: "アンプ"}, {name: "スピーカー"}, {name: "ケーブル/シールド"}, {name: "ラジオ"}, {name: "その他"}])
devise_health.children.create([{name: "ヘアドライヤー"}, {name: "ヘアアイロン"}, {name: "美容機器"}, {name: "電気シェーバー"}, {name: "電動歯ブラシ"}, {name: "その他"}])
devise_aircondition.children.create([{name: "エアコン"}, {name: "空気清浄器"}, {name: "加湿器"}, {name: "扇風機"}, {name: "除湿機"}, {name: "ファンヒーター"}, {name: "電気ヒーター"}, {name: "オイルヒーター"}, {name: "ストーブ"}, {name: "ホットカーペット"}, {name: "こたつ"}, {name: "電気毛布"}, {name: "その他"}])
devise_life.children.create([{name: "冷蔵庫"}, {name: "洗濯機"}, {name: "炊飯器"}, {name: "電子レンジ/オーブン"}, {name: "調理機器"}, {name: "アイロン"}, {name: "掃除機"}, {name: "エスプレッソマシン"}, {name: "コーヒーメーカー"}, {name: "衣類乾燥機"}, {name: "その他"}])


# スポーツ・レジャー

sport = Category.create(name: "スポーツ・レジャー")

sport_golf = sport.children.create(name: "ゴルフ")
sport_fishing = sport.children.create(name: "フィッシング")
sport_bike = sport.children.create(name: "自転車")
sport_exercise = sport.children.create(name: "トレーニング/エクササイズ")
sport_baseboll = sport.children.create(name: "野球")
sport_football = sport.children.create(name: "サッカー/フットサル")
sport_tennis = sport.children.create(name: "テニス")
sport_snowboad = sport.children.create(name: "スノーボード")
sport_ski = sport.children.create(name: "スキー")
sport_othersports = sport.children.create(name: "その他スポーツ")
sport_outdoor = sport.children.create(name: "アウトドア")
sport_etc = sport.children.create(name: "その他")


sport_golf.children.create([{name: "クラブ"}, {name: "ウエア(男性用)"}, {name: "ウエア(女性用)"}, {name: "バッグ"}, {name: "シューズ(男性用)"}, {name: "シューズ(女性用)"}, {name: "アクセサリー"}, {name: "その他"}])
sport_fishing.children.create([{name: "ロッド"}, {name: "リール"}, {name: "ルアー用品"}, {name: "ウエア"}, {name: "釣り糸/ライン"}, {name: "その他"}])
sport_bike.children.create([{name: "自転車本体"}, {name: "ウエア"}, {name: "パーツ"}, {name: "アクセサリー"}, {name: "バッグ"}, {name: "工具/メンテナンス"}, {name: "その他"}])
sport_exercise.children.create([{name: "ランニング"}, {name: "ウォーキング"}, {name: "ヨガ"}, {name: "トレーニング用品"}, {name: "その他"}])
sport_baseboll.children.create([{name: "ウェア"}, {name: "シューズ"}, {name: "グローブ"}, {name: "バット"}, {name: "アクセサリー"}, {name: "防具"}, {name: "練習機器"}, {name: "記念グッズ"}, {name: "応援グッズ"}, {name: "その他"}])
sport_football.children.create([{name: "ウェア"}, {name: "シューズ"}, {name: "ボール"}, {name: "アクセサリー"}, {name: "記念グッズ"}, {name: "応援グッズ"}, {name: "その他"}])
sport_tennis.children.create([{name: "ラケット(硬式用)"}, {name: "ラケット(軟式用)"}, {name: "ウェア"}, {name: "シューズ"}, {name: "ボール"}, {name: "アクセサリー"}, {name: "記念グッズ"}, {name: "応援グッズ"}, {name: "その他"}])
sport_snowboad.children.create([{name: "ボード"}, {name: "バインディング"}, {name: "ブーツ(男性用)"}, {name: "ブーツ(女性用)"}, {name: "ブーツ(子ども用)"}, {name: "ウエア/装備(男性用)"}, {name: "ウエア/装備(女性用)"}, {name: "ウエア/装備(子ども用)"}, {name: "アクセサリー"}, {name: "バッグ"}, {name: "その他"}])
sport_ski.children.create([{name: "板"}, {name: "ブーツ(男性用)"}, {name: "ブーツ(女性用)"}, {name: "ブーツ(子ども用)"}, {name: "ビンディング"}, {name: "ウエア(男性用)"}, {name: "ウエア(女性用)"}, {name: "ウエア(子ども用)"}, {name: "ストック"}, {name: "その他"}])
sport_othersports.children.create([{name: "ダンス/バレエ"}, {name: "サーフィン"}, {name: "バスケットボール"}, {name: "バドミントン"}, {name: "バレーボール"}, {name: "スケートボード"}, {name: "陸上競技"}, {name: "ラグビー"}, {name: "アメリカンフットボール"}, {name: "ボクシング"}, {name: "ボウリング"}, {name: "その他"}])
sport_outdoor.children.create([{name: "テント/タープ"}, {name: "ライト/ランタン"}, {name: "寝袋/寝具"}, {name: "テーブル/チェア"}, {name: "ストーブ/コンロ"}, {name: "調理器具"}, {name: "食器"}, {name: "登山用品"}, {name: "その他"}])
sport_etc.children.create([{name: "旅行用品"}, {name: "その他"}])


# ハンドメイド

handmade = Category.create(name: "ハンドメイド")

handmade_accesary_woman = handmade.children.create(name: "アクセサリー(女性用)")
handmade_fashion = handmade.children.create(name: "ファッション/小物")
handmade_accesary_watch = handmade.children.create(name: "アクセサリー/時計")
handmade_interia = handmade.children.create(name: "日用品/インテリア")
handmade_hobby = handmade.children.create(name: "趣味/おもちゃ")
handmade_kids = handmade.children.create(name: "キッズ/ベビー")
handmade_material = handmade.children.create(name: "素材/材料")
handmade_create = handmade.children.create(name: "二次創作物")
handmade_etc = handmade.children.create(name: "その他")


handmade_accesary_woman.chidlren.create([{name: "ピアス"}, {name: "イヤリング"}, {name: "ネックレス"}, {name: "ブレスレット"}, {name: "リング"}, {name: "チャーム"}, {name: "ヘアゴム"}, {name: "アンクレット"}, {name: "その他"}])
handmade_fashion.chidlren.create([{name: "バッグ(女性用)"}, {name: "バッグ(男性用)"}, {name: "財布(女性用)"}, {name: "財布(男性用)"}, {name: "ファッション雑貨"}, {name: "その他"}])
handmade_accesary_watch.chidlren.create([{name: "アクセサリー(男性用)"}, {name: "時計(女性用)"}, {name: "時計(男性用)"}, {name: "その他"}])
handmade_interia.chidlren.create([{name: "キッチン用品"}, {name: "家具"}, {name: "文房具"}, {name: "アート/写真"}, {name: "アロマ/キャンドル"}, {name: "フラワー/ガーデン"}, {name: "その他"}])
handmade_hobby.chidlren.create([{name: "クラフト/布製品"}, {name: "おもちゃ/人形"}, {name: "その他"}])
handmade_kids.chidlren.create([{name: "ファッション雑貨"}, {name: "スタイ/よだれかけ"}, {name: "外出用品"}, {name: "ネームタグ"}, {name: "その他"}])
handmade_material.chidlren.create([{name: "各種パーツ"}, {name: "生地/糸"}, {name: "型紙/パターン"}, {name: "その他"}])
handmade_create.chidlren.create([{name: "Ingress"}, {name: "クリエイターズ宇宙兄弟"}, {name: "シンデレラガールズCPグッズ"},])
