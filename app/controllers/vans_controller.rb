class VansController < ApplicationController

  def index
    @vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(params_van)
    @van.user = current_user
    @van.save
    redirect_to van_path(@van)
  end

  def edit
    @van = Van.find(params[:id])
  end

  def update
    if current_user
      @van = Van.find(params[:id])
      @van.update(params_van)
      redirect_to van_path(@van)
    else
      redirect_to new_user_session_path
    end
  end

  def destroy
    @van = Van.find(params[:id])
    @van.destroy
    redirect_to vans_path
  end

  private

  def params_van
    params.require(:van).permit(:nb_seats, :brand, :description, :localisation)
  end
end
