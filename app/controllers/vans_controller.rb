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
    if current_user
      @van = Van.new(params_van)
      @van.user = current_user
      if @van.save
        redirect_to van_path(@van)
      else
        render :new
      end
    else
      redirect_to new_user_session_path
    end
  end

  def edit
    @van = Van.find(params[:id])
  end

  def update
    if current_user
      @van = Van.find(params[:id])
      @van.update(params_van)
      if @van.save
        redirect_to van_path(@van)
      else
        render :new
      end
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
    params.require(:van).permit(:nb_seats, :brand, :description, :localisation, :van_url)
  end
end
