class Api::V1::PiesController < ApplicationController
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

  def delete
  end

  private
    def pie_params
      new_params = params.permit(
        :title,
        :is_required
      )
    end
end
