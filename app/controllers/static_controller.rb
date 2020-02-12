class StaticController < ApplicationController
# New 
  def show
    render params[:page]
  end
end
