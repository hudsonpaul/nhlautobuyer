class DeckInfoController < ApplicationController

  before_action :get_session

  def index
  
   @deck_info = DeckInfo.get_deck_info(@current_session) 

  end
end
