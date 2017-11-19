class PlaysController < ApplicationController

  def index
    @plays = Play.all
  end

  def new
    @play = Play.new
  end

  def edit
    @play = Play.find(params[:id])
  end

  def create
    #render plain: params[:play].inspect
    @play = Play.new(play_params)
    if @play.save
      flash[:notice] = 'Play was successfully created.'
      redirect_to play_path(@play)
    else
      render 'new'
    end
  end

  def update
    @play = Play.find(params[:id])
    if @play.update(play_params)
      flash[:notice] = 'Play was successfully updated.'
      redirect_to play_path(@play)
    else
      render 'edit'
    end
  end

  def show
    @play = Play.find(params[:id])
  end

  def destroy
    @play = Play.find(params[:id])
    @play.destroy
    flash[:notice] = 'Play was successfully deleted.'
    redirect_to plays_path
  end

  private
  def play_params
    params.require(:play).permit(:title, :synopsis, :start_date, :end_date)
  end

end
