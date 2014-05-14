require 'test_helper'

class PiePieceTransactionSplitsControllerTest < ActionController::TestCase
  setup do
    @pie_piece_transaction_split = pie_piece_transaction_splits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pie_piece_transaction_splits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pie_piece_transaction_split" do
    assert_difference('PiePieceTransactionSplit.count') do
      post :create, pie_piece_transaction_split: { pie_id: @pie_piece_transaction_split.pie_id, pie_piece_id: @pie_piece_transaction_split.pie_piece_id, transaction_split_id: @pie_piece_transaction_split.transaction_split_id }
    end

    assert_redirected_to pie_piece_transaction_split_path(assigns(:pie_piece_transaction_split))
  end

  test "should show pie_piece_transaction_split" do
    get :show, id: @pie_piece_transaction_split
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pie_piece_transaction_split
    assert_response :success
  end

  test "should update pie_piece_transaction_split" do
    patch :update, id: @pie_piece_transaction_split, pie_piece_transaction_split: { pie_id: @pie_piece_transaction_split.pie_id, pie_piece_id: @pie_piece_transaction_split.pie_piece_id, transaction_split_id: @pie_piece_transaction_split.transaction_split_id }
    assert_redirected_to pie_piece_transaction_split_path(assigns(:pie_piece_transaction_split))
  end

  test "should destroy pie_piece_transaction_split" do
    assert_difference('PiePieceTransactionSplit.count', -1) do
      delete :destroy, id: @pie_piece_transaction_split
    end

    assert_redirected_to pie_piece_transaction_splits_path
  end
end
