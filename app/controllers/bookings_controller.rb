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
    start_date = booking_params[:start_date][0...10].to_date
    end_date = booking_params[:start_date][14..-1].to_date

    @booking = Booking.new(start_date: start_date, end_date: end_date)
    @booking.kid = @kid
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end
end
