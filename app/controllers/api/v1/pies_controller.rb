class Api::V1::PiesController < ApplicationController
  def index
    @pies = Pie.all.user(1)
  end

  def create
  end

  def update
  end

  def delete
  end
end
