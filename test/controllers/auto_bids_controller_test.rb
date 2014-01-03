require 'test_helper'

class AutoBidsControllerTest < ActionController::TestCase
  setup do
    @auto_bid = auto_bids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auto_bids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auto_bid" do
    assert_difference('AutoBid.count') do
      post :create, auto_bid: { max_bid: @auto_bid.max_bid, trade_id: @auto_bid.trade_id }
    end

    assert_redirected_to auto_bid_path(assigns(:auto_bid))
  end

  test "should show auto_bid" do
    get :show, id: @auto_bid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auto_bid
    assert_response :success
  end

  test "should update auto_bid" do
    patch :update, id: @auto_bid, auto_bid: { max_bid: @auto_bid.max_bid, trade_id: @auto_bid.trade_id }
    assert_redirected_to auto_bid_path(assigns(:auto_bid))
  end

  test "should destroy auto_bid" do
    assert_difference('AutoBid.count', -1) do
      delete :destroy, id: @auto_bid
    end

    assert_redirected_to auto_bids_path
  end
end
