class EaCardsController < ApplicationController
  before_action :set_ea_card, only: [:show, :edit, :update, :destroy]

  # GET /ea_cards
  # GET /ea_cards.json
  def index
    @ea_cards = EaCard.all
  end

  # GET /ea_cards/1
  # GET /ea_cards/1.json
  def show
  end

  # GET /ea_cards/new
  def new
    @ea_card = EaCard.new
    @ea_card.card_db_id = params[:ea_card][:card_db_id]
  end

  # GET /ea_cards/1/edit
  def edit
  end

  # POST /ea_cards
  # POST /ea_cards.json
  def create
    @ea_card = EaCard.new(ea_card_params)

    respond_to do |format|
      if @ea_card.save
        format.html { redirect_to @ea_card, notice: 'Ea card was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ea_card }
      else
        format.html { render action: 'new' }
        format.json { render json: @ea_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ea_cards/1
  # PATCH/PUT /ea_cards/1.json
  def update
    respond_to do |format|
      if @ea_card.update(ea_card_params)
        format.html { redirect_to @ea_card, notice: 'Ea card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ea_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ea_cards/1
  # DELETE /ea_cards/1.json
  def destroy
    @ea_card.destroy
    respond_to do |format|
      format.html { redirect_to ea_cards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ea_card
      @ea_card = EaCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ea_card_params
      params.require(:ea_card).permit(:name, :card_db_id, :player_type_id, :auto_buy_at)
    end
end
