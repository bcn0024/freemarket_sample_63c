class Product < ApplicationRecord
  # enum status[:new,:great,:good,:bad,:worse,:worst]
  validates :text, :name, :description, :postage, :status, :region, :arrival_date, :price, :size, presence: true

  has_many :categorys,dependent: :destroy
  has_many :images,dependent: :destroy
  has_many :chats,dependent: :destroy
  has_many :favorites,dependent: :destroy
  belongs_to :brand
  belongs_to :category
end
