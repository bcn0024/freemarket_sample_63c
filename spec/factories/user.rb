FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    kanji_surname {"00000000"}
    kanji_given_name {"aaaa"}
    kana_surname {"aaa"}
    kana_given_name {"aaa"}
    phone_number {"000000"}
    birth_year {"1994"}
    birth_month{"10"}
    birth_day{"21"}
  end

end