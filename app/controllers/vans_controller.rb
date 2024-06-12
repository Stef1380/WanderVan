class VansController < ApplicationController
  def show
    @vans = Van.where(user_id: current_user.id)
    @booking = Booking.new
    @van = Van.find(params[:id])
  end

  def new
    @van = Van.new
    @vans = Van.where(user_id: current_user.id)
    @booking = Booking.new
  end

  def create
    @van = Van.new(van_params)
    @van.user = current_user
    if @van.save!
      redirect_to user_path(current_user), notice: "Van was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @van = Van.where(user_id: current_user.id, params)
    @van = Van.find(params[:id])
  end

  def update
    @van = Van.find(params[:id])
    if @van.update(van_params)
      redirect_to user_path(current_user), notice: "Van was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @van = Van.find(params[:id])
    @van.destroy
    redirect_to vans_url, notice: "Van was successfully destroyed."
  end



  private

  def van_params
    params.require(:van).permit(:brand, :km, :description, :number_of_seat, :categorie, :location, :price, photos: [])
  end
end
