class SellingController < ApplicationController

  before_action :get_session

  def index

    @my_trades = Selling.get_my_trades(@current_session).reverse
  
  end

end
