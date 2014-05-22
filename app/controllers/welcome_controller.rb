class WelcomeController < ApplicationController
  def index
  end

  def template
    render :layout => false
  end
end
