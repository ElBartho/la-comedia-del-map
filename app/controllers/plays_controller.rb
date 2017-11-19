class PlaysController < ApplicationController
  before_action :set_play, only: [:show, :edit, :update, :destroy]

  def index
    @plays = Play.all
  end

  def new
    @play = Play.new
  end

  def edit
  end

  def create
    @play = Play.new(play_params)
    if @play.save
      flash[:notice] = 'Play was successfully created.'
      redirect_to play_path(@play)
    else
      render 'new'
    end
  end

  def update
    if @play.update(play_params)
      flash[:notice] = 'Play was successfully updated.'
      redirect_to play_path(@play)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @play.destroy
    flash[:notice] = 'Play was successfully deleted.'
    redirect_to plays_path
  end

  private
  def set_play
    @play = Play.find(params[:id])
  end
  def play_params
    params.require(:play).permit(:title, :synopsis, :start_date, :end_date)
  end

end
