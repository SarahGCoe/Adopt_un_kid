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
      redirect_to booking_path(new)
    else
      render :new
    end
  end
  
end
