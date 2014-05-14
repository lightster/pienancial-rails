class TransactionSplitsController < ApplicationController
  before_action :set_transaction_split, only: [:show, :edit, :update, :destroy]

  # GET /transaction_splits
  # GET /transaction_splits.json
  def index
    @transaction_splits = TransactionSplit.all
  end

  # GET /transaction_splits/1
  # GET /transaction_splits/1.json
  def show
  end

  # GET /transaction_splits/new
  def new
    @transaction_split = TransactionSplit.new
  end

  # GET /transaction_splits/1/edit
  def edit
  end

  # POST /transaction_splits
  # POST /transaction_splits.json
  def create
    @transaction_split = TransactionSplit.new(transaction_split_params)

    respond_to do |format|
      if @transaction_split.save
        format.html { redirect_to @transaction_split, notice: 'Transaction split was successfully created.' }
        format.json { render :show, status: :created, location: @transaction_split }
      else
        format.html { render :new }
        format.json { render json: @transaction_split.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transaction_splits/1
  # PATCH/PUT /transaction_splits/1.json
  def update
    respond_to do |format|
      if @transaction_split.update(transaction_split_params)
        format.html { redirect_to @transaction_split, notice: 'Transaction split was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction_split }
      else
        format.html { render :edit }
        format.json { render json: @transaction_split.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transaction_splits/1
  # DELETE /transaction_splits/1.json
  def destroy
    @transaction_split.destroy
    respond_to do |format|
      format.html { redirect_to transaction_splits_url, notice: 'Transaction split was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction_split
      @transaction_split = TransactionSplit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_split_params
      params.require(:transaction_split).permit(:transaction_record_id, :amount, :description)
    end
end
