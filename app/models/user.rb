class User < ApplicationRecord
  validates :nickname, :email, :encrypted_password, :kanji_surname,:kanji_given_name,:kana_surname,:kana_given_name,:phone_number, presence: true
  validates :password, length:{minimum:7}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable

  has_one :address
  has_many :cards


  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    auth.info.email,
        name:  auth.info.name,
        password: Devise.friendly_token[0, 20],
        image:  auth.info.image
      )
    end

    user
  end

  

  has_many :products

end
