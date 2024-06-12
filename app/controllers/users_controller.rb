class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @booking = Booking.find(params[:id])
    @vans = Van.all
  end
end
