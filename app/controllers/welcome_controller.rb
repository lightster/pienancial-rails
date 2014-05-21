class WelcomeController < ApplicationController
  def index
  end

  def template
    respond_to do |format|
      format.html { render :layout => false }
    end
  end
end
