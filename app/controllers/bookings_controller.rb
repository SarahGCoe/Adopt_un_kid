class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    # form_for!
  end

  def create
    @kid = kid.find(params[:kid_id])
    @booking = Booking.new(booking_params)
    @booking.kid = @kid
    @booking.user = current.user
    if @booking.save
      redirect_to kid_booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def set_booking_params
    params.require(:booking).permit(:dates, :id)
  end
  
end
