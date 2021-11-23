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
    @van = Van.create(params_van)
    redirect_to van_path(@van)
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
  
  def params_van
    params.require(:van).permit(:nb_seats, :brand, :description, :localisation)
  end
end
