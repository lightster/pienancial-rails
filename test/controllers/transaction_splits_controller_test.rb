require 'test_helper'

class TransactionSplitsControllerTest < ActionController::TestCase
  setup do
    @transaction_split = transaction_splits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transaction_splits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction_split" do
    assert_difference('TransactionSplit.count') do
      post :create, transaction_split: { amount: @transaction_split.amount, description: @transaction_split.description, transaction_record_id: @transaction_split.transaction_record_id }
    end

    assert_redirected_to transaction_split_path(assigns(:transaction_split))
  end

  test "should show transaction_split" do
    get :show, id: @transaction_split
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction_split
    assert_response :success
  end

  test "should update transaction_split" do
    patch :update, id: @transaction_split, transaction_split: { amount: @transaction_split.amount, description: @transaction_split.description, transaction_record_id: @transaction_split.transaction_record_id }
    assert_redirected_to transaction_split_path(assigns(:transaction_split))
  end

  test "should destroy transaction_split" do
    assert_difference('TransactionSplit.count', -1) do
      delete :destroy, id: @transaction_split
    end

    assert_redirected_to transaction_splits_path
  end
end
