class UsersController < ApplicationController
  def show
    @user = current_user
    @vans = Van.where(user_id: current_user.id)
    @bookings = Booking.where(user_id: current_user.id)
  end
end
