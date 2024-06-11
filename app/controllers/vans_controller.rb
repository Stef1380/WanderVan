class VansController < ApplicationController
  def index
    @vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(van_params)
    @van.user = current_user
    if @van.save!
      redirect_to @van, notice: "Van was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @van = Van.find(params[:id])
  end

  def update
    @van = Van.find(params[:id])
    if @van.update(van_params)
      redirect_to @van, notice: "Van was successfully updated."
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
