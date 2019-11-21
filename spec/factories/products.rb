FactoryBot.define do

  factory :product do
    name                 {"aaaaaa"}
    description          {"aaaaaa"}
    postage              {"aaaaaa"}
    status               {2}
    region               {"aaaaaa"}
    arrival_date         {"aaaaaa"}
    price                {"aaaaaa"}
    size                 {"aaaaaa"}
    user_id              {1}
    brand_id             {1}
    category_id          {1}
  end

end

# name:"aaa", description: "aaa", postage: "aaa", status: 1 ,region: "aaa", arrival_date: "2010/12/1", price: 213, size: "m", user_id: 1, brand_id: 1, category_id: 1
