class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      flash[:notice] = 'Actor was successfully created.'
      redirect_to actor_path(@actor)
    else
      render 'new'
    end
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update(actor_params)
      flash[:notice] = 'Actor was successfully updated.'
      redirect_to actor_path(@actor)
    else
      render 'edit'
    end
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    flash[:notice] = 'Actor was successfully deleted.'
    redirect_to actors_path
  end

  private
  def actor_params
    params.require(:actor).permit(:last_name, :first_name, :date_of_birth, :gender)
  end

end
