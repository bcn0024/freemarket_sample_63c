class Product < ApplicationRecord

  enum status: [["新品、未使用", 0],["未使用に近い", 1],["目立った傷や汚れなし", 2],["やや傷や汚れあり", 3],["傷や汚れあり", 4],["全体的に状態が悪い", 5]]
  # validates :name, :description, :postage, :status, :region, :arrival_date, :price, :size, presence: true
  validates :name, :description, :region, :arrival_date, :price, presence: true
  has_many :images
  accepts_nested_attributes_for :images
  # belongs_to :user

  # 単体テストの際、エラーが出るためコメントアウト
  # 下記モデル作成後、その都度コメントアウト外す。

  # has_many :categorys,dependent: :destroy
  
  # has_many :chats,dependent: :destroy
  # has_many :favorites,dependent: :destroy
  # belongs_to :brand
  belongs_to :category
end
