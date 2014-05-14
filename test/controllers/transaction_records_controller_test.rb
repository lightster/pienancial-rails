require 'test_helper'

class TransactionRecordsControllerTest < ActionController::TestCase
  setup do
    @transaction_record = transaction_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transaction_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction_record" do
    assert_difference('TransactionRecord.count') do
      post :create, transaction_record: { transaction_date: @transaction_record.transaction_date, user_id: @transaction_record.user_id }
    end

    assert_redirected_to transaction_record_path(assigns(:transaction_record))
  end

  test "should show transaction_record" do
    get :show, id: @transaction_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction_record
    assert_response :success
  end

  test "should update transaction_record" do
    patch :update, id: @transaction_record, transaction_record: { transaction_date: @transaction_record.transaction_date, user_id: @transaction_record.user_id }
    assert_redirected_to transaction_record_path(assigns(:transaction_record))
  end

  test "should destroy transaction_record" do
    assert_difference('TransactionRecord.count', -1) do
      delete :destroy, id: @transaction_record
    end

    assert_redirected_to transaction_records_path
  end
end
