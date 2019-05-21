class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.where(user: @user)
  end

  def new
    @kid = Kid.find(params[:kid_id])

    @booking = Booking.new
    # form_for!
  end

  def create
    @kid = Kid.find(params[:kid_id])
    @booking = Booking.new(booking_params)
    @booking.kid = @kid
    @booking.user = current_user
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

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :id)
  end
end
