class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @van = Van.find(params[:van_id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @van = Van.find(params[:van_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @van = Van.find(params[:van_id])
    @booking.van = @van
    @booking.user = current_user
    @van.price
    total_days = (@booking.end_date - @booking.start_date).to_i + 1
    @booking.total_price = total_days * @van.price
    if @booking.save!
      redirect_to user_path(current_user), notice: "Van was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date,:start_date,:start_date,:end_date,:end_date,:end_date)
  end
end
