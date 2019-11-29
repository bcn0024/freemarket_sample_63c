class User < ApplicationRecord
  validates :nickname, :email, :encrypted_password, :kanji_surname,:kanji_given_name,:kana_surname,:kana_given_name,:phone_number, presence: true
  validates :password, length:{minimum:7}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :address
end
