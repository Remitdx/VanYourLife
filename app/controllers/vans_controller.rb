class VansController < ApplicationController
  def index
    @vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
  end

  def edit
    @van = Van.find(params[:id])
  end

  def update
    @van = Van.find(params[:id])
    @van.update(van_params)
    redirect_to van_path(@van)

  end

  private

  def van_params
    params.require(:van).permit(:name, :nb_seats, :brand, :description, :localisation)
  end

end
