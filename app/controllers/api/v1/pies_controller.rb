class Api::V1::PiesController < ApplicationController
  before_action :set_pie, only: [:destroy]

  def index
    @pies = Pie.all.user(1)
  end

  def create
    @pie = Pie.new(pie_params.merge!(
      :user_id => get_current_user.id
    ))

    if @pie.save
      render json: @pie, status: :created
    else
      render json: @pie.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
    @pie.destroy
    head :no_content
  end

  private
    def set_pie
      @pie = Pie.find_by! id: params[:id], user_id: get_current_user.id
    end

    def pie_params
      new_params = params.permit(
        :title,
        :is_required
      )
    end
end
