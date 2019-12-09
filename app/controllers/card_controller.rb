class CardController < ApplicationController
  require "payjp"
  before_action :set_card, only: [:index,:show,:destroy,]

  def new
    card = Card.where(user_id: current_user.id)
    redirect_to user_card_index_path(current_user.id) if card.exists?
  end

  def pay #payjpとCardのデータベース作成を実施します。
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']

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
  
  def destroy #PayjpとCardデータベースを削除します
    if card.blank?
    else
      Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
      redirect_to user_card_index_path(current_user.id)
  end
  
  def show
     #Cardのデータpayjpに送り情報を取り出します
    if card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def index
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @default_card_information = customer.cards.retrieve(@card.card_id)
  end

  def set_card
    card = Card.where(user_id: current_user.id).first
  end
end