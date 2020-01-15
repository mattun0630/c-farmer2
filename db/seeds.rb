# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

array = %w(野菜 果物 お茶 産地直送 期間限定 北海道 

野菜セット 野菜 果物 肉 魚介類 卵・乳製品 はちみつ お酒 お茶 調味料 米・穀類 加工品

自然栽培 減農薬栽培 農薬化学肥料不使用 自家採取

有機JAS認証 特別栽培認証 九州 四国 特A受賞米 贈答品 一等米 お試し野菜セット 家庭用 定期購入 期間限定 離乳食・幼児食用 サラダ野菜セット 動物性堆肥不使用 お歳暮 共同購入 お中元

北海道
青森県 岩手県 宮城県 秋田県 山形県 福島県
茨城県 栃木県 群馬県 埼玉県 千葉県 東京都 神奈川県
新潟県 富山県 石川県 福井県 山梨県 長野県 岐阜県 静岡県 愛知県
三重県 滋賀県 京都府 大阪府 兵庫県 奈良県 和歌山県
鳥取県 島根県 岡山県 広島県 山口県
徳島県 香川県 愛媛県 高知県
福岡県 佐賀県 長崎県 熊本県 大分県 宮崎県 鹿児島県 沖縄県
)
array.each{ |tag|
  tag_list = ActsAsTaggableOn::Tag.new
  tag_list.name = tag
  tag_list.save
}