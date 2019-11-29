class SignupController < ApplicationController
  
  def step1
    @user = User.new
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

  def create
      @user=User.create(
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
      phone_number: user_params[:phone_number]
    )
    if @user.save
      redirect_to  new_signup_address_path(:signup_id)
    else
      render '/signup/step1'
    end
  end

  def step3
    @user = User.find(1)
    @address = Address.new
    # @address = @user.address
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
      :phone_number
  )
  end
end
