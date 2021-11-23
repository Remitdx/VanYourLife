class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @van = Van.find(params[:van_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @van = Van.find(params[:van_id])
    @booking.van = @van
    @booking.user = current_user
    @booking.status = "Pending"
    if @booking.save!
      redirect_to van_path(@van)
    else
      render :new
    end
  end

   private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date )
  end
end
