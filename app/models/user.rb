class User < ApplicationRecord
  validates :nickname, :email, :encrypted_password, :kanji_surname,:kanji_given_name,:kana_surname,:kana_given_name,:phone_number, presence: true
  validates :password, length:{minimum:7}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable,:omniauthable, omniauth_providers: %i[facebook google_oauth2]

         
  has_one :address
  has_many :cards
  has_many :products

  has_many :sns_credentials, dependent: :destroy

  #validatesは省略
  
    #omniauth_callbacks_controllerで呼び出すメソッド
    def self.find_oauth(auth)
      uid = auth.uid
      provider = auth.provider
      snscredential = SnsCredential.where(uid: uid, provider: provider).first #firstをつけないとデータが配列で返されて使いたいメソッドが使えなくて困る
  
      #sns_credentialsが登録されている
      if snscredential.present?
        user = User.where(email: auth.info.email).first
  
        # userが登録されていない
        unless user.present?
          user = User.new(
          nickname: auth.info.name,
          email: auth.info.email,
          )
        end
        sns = snscredential
        #返り値をハッシュにして扱いやすくする  
        #活用例 info = User.find_oauth(auth) 
               #session[:nickname] = info[:user][:nickname]
        { user: user, sns: sns}
  
      #sns_credentialsが登録されていない
      else
        user = User.where(email: auth.info.email).first
  
  
        # userが登録されている
        if user.present?
          sns = SnsCredential.create(
            uid: uid,
            provider: provider,
            user_id: user.id
          )
  
          { user: user, sns: sns}
  
        # userが登録されていない
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