class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @van = Van.price
    total_days = (Booking.end_date - Booking.start_date).to_i + 1
    self.total_price = total_days * van.price_per_day
    Booking.total_price(total_days * @van)
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date,:start_date,:start_date,:end_date,:end_date,:end_date)
  end
end
