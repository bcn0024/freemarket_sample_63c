class SignupController < ApplicationController
  
  def step1
      @user = User.new
  end

  def step1sns
    if session[:password_confirmation]
    
      @user = User.new(
        #omniauth_callbacks_controllerで定義したsession
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

  def step4
    session[:postal_code] = address_params[:postal_code]
    session[:prefectures] = address_params[:prefectures]
    session[:address] = address_params[:address]
    session[:municipalities] = address_params[:municipalities]
    session[:building] = address_params[:building]
    @card = Card.new
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
      phone_number: session[:phone_number],

    )
    
    @address= Address.create(
      postal_code: session[:postal_code],
      prefectures: session[:prefectures],
      address: session[:address],
      municipalities: session[:municipalities],
      building: session[:building],
      user_id: @user.id
     )
  
    @card = Card.create(
      card_number: session[:postal_code],
      month: session[:postal_code],
      year: session[:postal_code],
      safity_number: session[:postal_code],
      user_id: @user.id
    )
    sign_in(@user) unless user_signed_in?
    # sign_in User.find(session[:id]) unless user_signed_in?
    if @card.save
     
    else
      render '/signup/step1'
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

  def card_params
    params.require(:card).permit(
      :card_number,
      :month,
      :day,
      :safity_number
  )
  end

end
