class SignupController < ApplicationController
  require "payjp"

  def step1
      @user = User.new
  end

  def step1sns
    
   if session[:password_confirmation]
      
      @user = User.new(
        nickname: session[:nickname],
        email: session[:email],
        password: session[:password_confirmation]
      )
    else
      @user = User.new
    end
  end

  def step2
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    session[:kanji_surname] = user_params[:kanji_surname]
    session[:kanji_given_name] = user_params[:kanji_given_name]
    session[:kana_surname] = user_params[:kana_surname]
    session[:kana_given_name] = user_params[:kana_given_name]
    session[:birth_year] = user_params[:birth_year]
    session[:birth_month] = user_params[:birth_month]
    session[:birth_day] = user_params[:birth_day]
    @user = User.new
  end

  def step3
    session[:phone_number] = user_params[:phone_number]
    @address = Address.new
  end

  

  def done
      @user = User.create(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      kanji_surname: session[:kanji_surname], 
      kanji_given_name: session[:kanji_given_name], 
      kana_surname: session[:kana_surname],
      kana_given_name: session[:kana_given_name],
      birth_year: session[:birth_year], 
      birth_month: session[:birth_month], 
      birth_day: session[:birth_day],
      phone_number: session[:phone_number]

    )
    
    @address= Address.create(
      postal_code: session[:postal_code],
      prefectures: session[:prefectures],
      address: session[:address],
      municipalities: session[:municipalities],
      building: session[:building],
      user_id: @user.id
     )
  
    
    sign_in(@user) unless user_signed_in?
    
    if @address.save
       render  '/signup/step4'
      
    else
      render '/signup/step1'
    end
  end
  def step4
    card = Card.where(user_id: current_user.id)
    redirect_to action: "step5" if card.exists?
  end

  def pay 
    Payjp.api_key = 'sk_test_bd4e50db2758c85468065f4c'
    if params['payjp-token'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
      description: '登録テスト', 
      email: current_user.email,
      card: params['payjp-token'],
      metadata: {user_id: current_user.id}
      ) 
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        render '/signup/step5'
      else
        redirect_to action: "step4"
      end
    end
    def step5
    end
  end
  






  private
  def user_params
    params.require(:user).permit(
      :nickname, 
      :email, 
      :password, 
      :password_confirmation, 
      :kanji_surname, 
      :kanji_given_name, 
      :kana_surname, 
      :kana_given_name, 
      :birth_year,
      :birth_month,
      :birth_day,
      :phone_number,
  )
  end

  def address_params
    params.require(:address).permit(
      :postal_code,
      :prefectures,
      :address,
      :municipalities,
      :building,
  )
  end

end
