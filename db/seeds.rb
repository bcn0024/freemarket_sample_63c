# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# woman_.children.create([{name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}])
# woman_.children.create([{name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}, {name: ""}])

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

woman_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "ポロシャツ"}, {name: "キャミソール"}, {name: "タンクトップ"}, {name: "ホルターネック"}, {name: "ニット/セーター"}, {name: "チュニック"}, {name: "カーディガン/ボレロ"}, {name: "アンサンブル"}, {name: "ベスト/ジレ"}, {name: "パーカー"}, {name: "トレーナー/スウェット"}, {name: "ベアトップ/チューブトップ"}, {name: "ジャージ"}, {name: "その他"}, {name: "その他"}])
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






woman = Category.create(name: "レディース")

woman_tops = woman.children.create(name: "トップス")
woman_jacket = woman.children.create(name: "ジャケット/アウター")
woman_pants = woman.children.create(name: "パンツ")
woman_shoes = woman.children.create(name: "靴")
woman_bag = woman.children.create(name: "バッグ")
woman_suit = woman.children.create(name: "スーツ")
woman_hat = woman.children.create(name: "帽子")
woman_accessories = woman.children.create(name: "アクセサリー ")
woman_small = woman.children.create(name: "小物")
woman_watch = woman.children.create(name: "時計")
woman_swimwear = woman.children.create(name: "水着")
woman_legwear = woman.children.create(name: "レッグウェア")
woman_underwear = woman.children.create(name: "アンダーウェア")
woman_etc = woman.children.create(name: "その他")

woman_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "シャツ/ブラウス(半袖/袖なし)"}, {name: "シャツ/ブラウス(七分/長袖)"}, {name: "ポロシャツ"}, {name: "キャミソール"}, {name: "タンクトップ"}, {name: "ホルターネック"}, {name: "ニット/セーター"}, {name: "チュニック"}, {name: "カーディガン/ボレロ"}, {name: "アンサンブル"}, {name: "ベスト/ジレ"}, {name: "パーカー"}, {name: "トレーナー/スウェット"}, {name: "ベアトップ/チューブトップ"}, {name: "ジャージ"}, {name: "その他"}, {name: "その他"}])
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













