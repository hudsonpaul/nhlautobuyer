require 'test_helper'

class EaCardsControllerTest < ActionController::TestCase
  setup do
    @ea_card = ea_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ea_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ea_card" do
    assert_difference('EaCard.count') do
      post :create, ea_card: { auto_buy_at: @ea_card.auto_buy_at, card_db_id: @ea_card.card_db_id, name: @ea_card.name, player_type_id: @ea_card.player_type_id }
    end

    assert_redirected_to ea_card_path(assigns(:ea_card))
  end

  test "should show ea_card" do
    get :show, id: @ea_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ea_card
    assert_response :success
  end

  test "should update ea_card" do
    patch :update, id: @ea_card, ea_card: { auto_buy_at: @ea_card.auto_buy_at, card_db_id: @ea_card.card_db_id, name: @ea_card.name, player_type_id: @ea_card.player_type_id }
    assert_redirected_to ea_card_path(assigns(:ea_card))
  end

  test "should destroy ea_card" do
    assert_difference('EaCard.count', -1) do
      delete :destroy, id: @ea_card
    end

    assert_redirected_to ea_cards_path
  end
end
