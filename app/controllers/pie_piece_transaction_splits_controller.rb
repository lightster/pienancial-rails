class PiePieceTransactionSplitsController < ApplicationController
  before_action :set_pie_piece_transaction_split, only: [:show, :edit, :update, :destroy]

  # GET /pie_piece_transaction_splits
  # GET /pie_piece_transaction_splits.json
  def index
    @pie_piece_transaction_splits = PiePieceTransactionSplit.all
  end

  # GET /pie_piece_transaction_splits/1
  # GET /pie_piece_transaction_splits/1.json
  def show
  end

  # GET /pie_piece_transaction_splits/new
  def new
    @pie_piece_transaction_split = PiePieceTransactionSplit.new
  end

  # GET /pie_piece_transaction_splits/1/edit
  def edit
  end

  # POST /pie_piece_transaction_splits
  # POST /pie_piece_transaction_splits.json
  def create
    @pie_piece_transaction_split = PiePieceTransactionSplit.new(pie_piece_transaction_split_params)

    respond_to do |format|
      if @pie_piece_transaction_split.save
        format.html { redirect_to @pie_piece_transaction_split, notice: 'Pie piece transaction split was successfully created.' }
        format.json { render :show, status: :created, location: @pie_piece_transaction_split }
      else
        format.html { render :new }
        format.json { render json: @pie_piece_transaction_split.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pie_piece_transaction_splits/1
  # PATCH/PUT /pie_piece_transaction_splits/1.json
  def update
    respond_to do |format|
      if @pie_piece_transaction_split.update(pie_piece_transaction_split_params)
        format.html { redirect_to @pie_piece_transaction_split, notice: 'Pie piece transaction split was successfully updated.' }
        format.json { render :show, status: :ok, location: @pie_piece_transaction_split }
      else
        format.html { render :edit }
        format.json { render json: @pie_piece_transaction_split.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pie_piece_transaction_splits/1
  # DELETE /pie_piece_transaction_splits/1.json
  def destroy
    @pie_piece_transaction_split.destroy
    respond_to do |format|
      format.html { redirect_to pie_piece_transaction_splits_url, notice: 'Pie piece transaction split was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pie_piece_transaction_split
      @pie_piece_transaction_split = PiePieceTransactionSplit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pie_piece_transaction_split_params
      params.require(:pie_piece_transaction_split).permit(:pie_id, :pie_piece_id, :transaction_split_id)
    end
end
