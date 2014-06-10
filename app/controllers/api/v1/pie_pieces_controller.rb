class Api::V1::PiePiecesController < ApplicationController
  before_action :set_pie_piece, only: [:update, :destroy]

  def index
    @pie_pieces = PiePiece.all.user(get_current_user.id)
  end

  def create
    @pie_piece = PiePiece.new(pie_piece_params.merge!(
      :pie_id => params.require(:pie_id)
    ))

    if @pie_piece.save
      render json: @pie_piece, status: :created
    else
      render json: @pie_piece.errors, status: :unprocessable_entity
    end
  end

  def update
    if @pie_piece.update(pie_piece_params)
      render json: @pie_piece, status: :ok
    else
      render json: @pie_piece.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @pie_piece.destroy
    head :no_content
  end

  private
    def set_pie_piece
      @pie_piece = PiePiece.joins(:pie).where(
        id: params[:id],
        pies: { user_id: get_current_user.id }
      ).take!
    end

    def pie_piece_params
      new_params = params.permit(
        :title
      )
    end
end
