class Api::V1::PiePiecesController < ApplicationController
  def index
    @pie_pieces = PiePiece.all.user(1)
  end

  def create
    @pie_piece = PiePiece.new(pie_piece_params)

    if @pie_piece.save
      render json: @pie_piece, status: :created
    else
      render json: @pie_piece.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private
    def pie_piece_params
      new_params = params.permit(
        :pie_id,
        :title
      )
    end
end
