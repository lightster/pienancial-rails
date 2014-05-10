class PiePiecesController < ApplicationController
  before_action :set_pie_piece, only: [:show, :edit, :update, :destroy]

  # GET /pie_pieces
  # GET /pie_pieces.json
  def index
    @pie_pieces = PiePiece.all
  end

  # GET /pie_pieces/1
  # GET /pie_pieces/1.json
  def show
  end

  # GET /pie_pieces/new
  def new
    @pie_piece = PiePiece.new
  end

  # GET /pie_pieces/1/edit
  def edit
  end

  # POST /pie_pieces
  # POST /pie_pieces.json
  def create
    @pie_piece = PiePiece.new(pie_piece_params)

    respond_to do |format|
      if @pie_piece.save
        format.html { redirect_to @pie_piece, notice: 'Pie piece was successfully created.' }
        format.json { render :show, status: :created, location: @pie_piece }
      else
        format.html { render :new }
        format.json { render json: @pie_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pie_pieces/1
  # PATCH/PUT /pie_pieces/1.json
  def update
    respond_to do |format|
      if @pie_piece.update(pie_piece_params)
        format.html { redirect_to @pie_piece, notice: 'Pie piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @pie_piece }
      else
        format.html { render :edit }
        format.json { render json: @pie_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pie_pieces/1
  # DELETE /pie_pieces/1.json
  def destroy
    @pie_piece.destroy
    respond_to do |format|
      format.html { redirect_to pie_pieces_url, notice: 'Pie piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pie_piece
      @pie_piece = PiePiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pie_piece_params
      params.require(:pie_piece).permit(:pie_id, :title)
    end
end
