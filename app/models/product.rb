class Product < ApplicationRecord

  enum status: { 新品、未使用: 0, 未使用に近い: 1, 目立った傷や汚れなし: 2, やや傷や汚れあり: 3, 傷や汚れあり: 4, 全体的に状態が悪い: 5}

  validates :name, :description, :status, :postage, :region, :arrival_date, :price, presence: true
  has_many :images
  belongs_to :brand
  belongs_to :category
  accepts_nested_attributes_for :images
  accepts_nested_attributes_for :brand
  belongs_to :user, class_name: "User"
  belongs_to :buyer, class_name: "User", optional:true



  
end