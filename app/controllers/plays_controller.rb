class PlaysController < ApplicationController

  def index
    @plays = Play.all
  end

  def show
    @plays = Play.find(params[:id])
  end
end
