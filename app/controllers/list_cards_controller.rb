class ListCardsController < ApplicationController

  before_action :get_session

  def new
    @list_card = ListCard.new 
    @list_card.card_id = params[:card_id]

  end

  def create
    
    hash = params[:list_card]
    @message = ListCard.list_card(@current_session, hash[:card_id], hash[:reserve], hash[:bin], hash[:time])

    redirect_to selling_index_path

  end
  
  def update
    create
  end

  def show
    create
  end
end
