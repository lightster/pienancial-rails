class PiePieceTransactionsController < ApplicationController
  before_action :set_pie_piece_transaction, only: [:show, :edit, :update, :destroy]

  # GET /pie_piece_transactions
  # GET /pie_piece_transactions.json
  def index
    @pie_piece_transactions = PiePieceTransaction.all
  end

  # GET /pie_piece_transactions/1
  # GET /pie_piece_transactions/1.json
  def show
  end

  # GET /pie_piece_transactions/new
  def new
    @pie_piece_transaction = PiePieceTransaction.new
  end

  # GET /pie_piece_transactions/1/edit
  def edit
  end

  # POST /pie_piece_transactions
  # POST /pie_piece_transactions.json
  def create
    @pie_piece_transaction = PiePieceTransaction.new(pie_piece_transaction_params)

    respond_to do |format|
      if @pie_piece_transaction.save
        format.html { redirect_to @pie_piece_transaction, notice: 'Pie piece transaction was successfully created.' }
        format.json { render :show, status: :created, location: @pie_piece_transaction }
      else
        format.html { render :new }
        format.json { render json: @pie_piece_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pie_piece_transactions/1
  # PATCH/PUT /pie_piece_transactions/1.json
  def update
    respond_to do |format|
      if @pie_piece_transaction.update(pie_piece_transaction_params)
        format.html { redirect_to @pie_piece_transaction, notice: 'Pie piece transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @pie_piece_transaction }
      else
        format.html { render :edit }
        format.json { render json: @pie_piece_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pie_piece_transactions/1
  # DELETE /pie_piece_transactions/1.json
  def destroy
    @pie_piece_transaction.destroy
    respond_to do |format|
      format.html { redirect_to pie_piece_transactions_url, notice: 'Pie piece transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pie_piece_transaction
      @pie_piece_transaction = PiePieceTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pie_piece_transaction_params
      params.require(:pie_piece_transaction).permit(:pie_id, :pie_piece_id, :transaction_id)
    end
end
