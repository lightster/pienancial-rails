class WelcomeController < ApplicationController
  def index
    render :layout => false
  end

  def template
    render :layout => false
  end
end
