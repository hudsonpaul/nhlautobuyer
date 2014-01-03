class AutoBidsController < ApplicationController
  before_action :get_session
  before_action :set_auto_bid, only: [:show, :edit, :update, :destroy]

  # GET /auto_bids
  # GET /auto_bids.json
  def index
    @auto_bids = AutoBid.all
  end

  # GET /auto_bids/1
  # GET /auto_bids/1.json
  def show
  end

  # GET /auto_bids/new
  def new
    @auto_bid = AutoBid.new
    @auto_bid.trade_id = params[:auto_bid][:trade_id]
  end

  # GET /auto_bids/1/edit
  def edit
  end

  # POST /auto_bids
  # POST /auto_bids.json
  def create
    @auto_bid = AutoBid.new(auto_bid_params)

    respond_to do |format|
      if @auto_bid.save
        Watch.do_watch(@current_session, @auto_bid.trade_id)
        
        format.html { redirect_to watchlist_path }
        format.json { render action: 'show', status: :created, location: @auto_bid }
      else
        format.html { render action: 'new' }
        format.json { render json: @auto_bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_bids/1
  # PATCH/PUT /auto_bids/1.json
  def update
    respond_to do |format|
      if @auto_bid.update(auto_bid_params)
        format.html { redirect_to watchlist_path }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @auto_bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_bids/1
  # DELETE /auto_bids/1.json
  def destroy
    @auto_bid.destroy
    respond_to do |format|
      format.html { redirect_to watchlist_path}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_bid
      @auto_bid = AutoBid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_bid_params
      params.require(:auto_bid).permit(:trade_id, :max_bid)
    end
end
