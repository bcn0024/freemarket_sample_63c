class CardController < ApplicationController
  require "payjp"
  before_action :set_card, only: [:index,:show,:destroy]

  def new
    card = Card.where(user_id: current_user.id)
    redirect_to user_card_index_path(current_user.id) if card.exists?
  end

  def pay 
    Payjp.api_key = 'sk_test_bd4e50db2758c85468065f4c'

    if params['payjp-token'].blank?
      redirect_to  new_user_card_path(current_user.id)
    else
      customer = Payjp::Customer.create(
      description: '登録テスト', 
      email: current_user.email,
      card: params['payjp-token'],
      metadata: {user_id: current_user.id}
      ) 
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to user_card_index_path(current_user.id)
      else
        redirect_to  new_user_card_path(current_user.id)
      end
    end
  end
  
  def destroy 
    if @card.blank?
    else
      Payjp.api_key = 'sk_test_bd4e50db2758c85468065f4c'
      customer = Payjp::Customer.retrieve(@card.customer_id)
      customer.delete
      @card.delete
    end
      redirect_to user_card_index_path(current_user.id)
  end
  
  def index
    if @card.blank?
    else
      Payjp.api_key = 'sk_test_bd4e50db2758c85468065f4c'
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
      @card_brand = @default_card_information.brand      
      case @card_brand
      when "Visa"
        @card_src = "visa.svg"
      when "JCB"
        @card_src = "jcb.svg"
      when "MasterCard"
        @card_src = "master-card.svg"
      when "American Express"
        @card_src = "american_express.svg"
      when "Diners Club"
        @card_src = "dinersclub.svg"
      when "Discover"
        @card_src = "discover.svg"
      end
    end
  end


private
  def set_card
    @card = Card.where(user_id: current_user.id).first
  end
end