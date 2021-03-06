class User < ApplicationRecord
  validates :nickname, :email, :encrypted_password, :kanji_surname,:kanji_given_name,:kana_surname,:kana_given_name,:phone_number, presence: true
  validates :password, length:{minimum:7}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable,:omniauthable, omniauth_providers: %i[facebook google_oauth2]


  has_one :address
  has_one  :card
  has_many :products

  has_many :sns_credentials, dependent: :destroy

  has_many :buyed_products, foreign_key: "buyer_id", class_name: "Product"
  has_many :selling_products, -> { where("buyer_id is NULL") }, foreign_key: "user_id", class_name: "Product"
  has_many :sold_products, -> { where("buyer_id is not NULL") }, foreign_key: "user_id", class_name: "Product"

  


    def self.find_oauth(auth)
      uid = auth.uid
      provider = auth.provider
      snscredential = SnsCredential.where(uid: uid, provider: provider).first

      
      if snscredential.present?
        user = User.where(email: auth.info.email).first

       
        unless user.present?
          user = User.new(
          nickname: auth.info.name,
          email: auth.info.email,
          )
        end
        sns = snscredential
        
        { user: user, sns: sns}


      else
        user = User.where(email: auth.info.email).first



        if user.present?
          sns = SnsCredential.create(
            uid: uid,
            provider: provider,
            user_id: user.id
          )

          { user: user, sns: sns}

        else
          user = User.new(
          nickname: auth.info.name,
          email: auth.info.email,
          )
          sns = SnsCredential.new(
            uid: uid,
            provider: provider
          )

          { user: user, sns: sns}
        end
      end
    end
end