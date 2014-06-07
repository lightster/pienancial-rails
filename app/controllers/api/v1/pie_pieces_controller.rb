class Api::V1::PiePiecesController < ApplicationController
  def index
    @pie_pieces = PiePiece.all.user(1)
  end

  def create
  end

  def update
  end

  def destroy
  end
end
