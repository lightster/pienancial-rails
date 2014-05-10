require 'test_helper'

class PiePiecesControllerTest < ActionController::TestCase
  setup do
    @pie_piece = pie_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pie_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pie_piece" do
    assert_difference('PiePiece.count') do
      post :create, pie_piece: { pie_id: @pie_piece.pie_id, title: @pie_piece.title }
    end

    assert_redirected_to pie_piece_path(assigns(:pie_piece))
  end

  test "should show pie_piece" do
    get :show, id: @pie_piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pie_piece
    assert_response :success
  end

  test "should update pie_piece" do
    patch :update, id: @pie_piece, pie_piece: { pie_id: @pie_piece.pie_id, title: @pie_piece.title }
    assert_redirected_to pie_piece_path(assigns(:pie_piece))
  end

  test "should destroy pie_piece" do
    assert_difference('PiePiece.count', -1) do
      delete :destroy, id: @pie_piece
    end

    assert_redirected_to pie_pieces_path
  end
end
