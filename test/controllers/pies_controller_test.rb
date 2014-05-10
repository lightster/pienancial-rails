require 'test_helper'

class PiesControllerTest < ActionController::TestCase
  setup do
    @py = pies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create py" do
    assert_difference('Pie.count') do
      post :create, py: { is_required: @py.is_required, title: @py.title, user_id: @py.user_id }
    end

    assert_redirected_to py_path(assigns(:py))
  end

  test "should show py" do
    get :show, id: @py
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @py
    assert_response :success
  end

  test "should update py" do
    patch :update, id: @py, py: { is_required: @py.is_required, title: @py.title, user_id: @py.user_id }
    assert_redirected_to py_path(assigns(:py))
  end

  test "should destroy py" do
    assert_difference('Pie.count', -1) do
      delete :destroy, id: @py
    end

    assert_redirected_to pies_path
  end
end
