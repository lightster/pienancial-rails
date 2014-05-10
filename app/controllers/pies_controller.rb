class PiesController < ApplicationController
  before_action :set_py, only: [:show, :edit, :update, :destroy]

  # GET /pies
  # GET /pies.json
  def index
    @pies = Pie.all
  end

  # GET /pies/1
  # GET /pies/1.json
  def show
  end

  # GET /pies/new
  def new
    @py = Pie.new
  end

  # GET /pies/1/edit
  def edit
  end

  # POST /pies
  # POST /pies.json
  def create
    @py = Pie.new(py_params)

    respond_to do |format|
      if @py.save
        format.html { redirect_to @py, notice: 'Pie was successfully created.' }
        format.json { render :show, status: :created, location: @py }
      else
        format.html { render :new }
        format.json { render json: @py.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pies/1
  # PATCH/PUT /pies/1.json
  def update
    respond_to do |format|
      if @py.update(py_params)
        format.html { redirect_to @py, notice: 'Pie was successfully updated.' }
        format.json { render :show, status: :ok, location: @py }
      else
        format.html { render :edit }
        format.json { render json: @py.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pies/1
  # DELETE /pies/1.json
  def destroy
    @py.destroy
    respond_to do |format|
      format.html { redirect_to pies_url, notice: 'Pie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_py
      @py = Pie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def py_params
      params.require(:py).permit(:user_id, :title, :is_required)
    end
end
