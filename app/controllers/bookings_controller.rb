class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @van = Van.find(params[:van_id])
  end

  def show
    @booking = current_user.bookings.find_by(id: params[:id])
    if @booking.nil?
      flash[:alert] = "Booking not found or you don't have permission to access it."
      redirect_to root_path
    end
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

  def accepter
    @booking.accepter!
    redirect_to [@booking.van, @booking], notice: 'La réservation a été acceptée.'
  end

  def refuser
    @booking.refuser!
    redirect_to [@booking.van, @booking], notice: 'La réservation a été refusée.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date,:start_date,:start_date,:end_date,:end_date,:end_date)
  end
end
