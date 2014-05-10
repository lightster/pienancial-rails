require 'test_helper'

class PiePieceTransactionsControllerTest < ActionController::TestCase
  setup do
    @pie_piece_transaction = pie_piece_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pie_piece_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pie_piece_transaction" do
    assert_difference('PiePieceTransaction.count') do
      post :create, pie_piece_transaction: { pie_id: @pie_piece_transaction.pie_id, pie_piece_id: @pie_piece_transaction.pie_piece_id, transaction_id: @pie_piece_transaction.transaction_id }
    end

    assert_redirected_to pie_piece_transaction_path(assigns(:pie_piece_transaction))
  end

  test "should show pie_piece_transaction" do
    get :show, id: @pie_piece_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pie_piece_transaction
    assert_response :success
  end

  test "should update pie_piece_transaction" do
    patch :update, id: @pie_piece_transaction, pie_piece_transaction: { pie_id: @pie_piece_transaction.pie_id, pie_piece_id: @pie_piece_transaction.pie_piece_id, transaction_id: @pie_piece_transaction.transaction_id }
    assert_redirected_to pie_piece_transaction_path(assigns(:pie_piece_transaction))
  end

  test "should destroy pie_piece_transaction" do
    assert_difference('PiePieceTransaction.count', -1) do
      delete :destroy, id: @pie_piece_transaction
    end

    assert_redirected_to pie_piece_transactions_path
  end
end
