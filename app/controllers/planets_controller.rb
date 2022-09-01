class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
    @booking = Booking.new
  end

  def create
    @planet = Planet.create(planet_params)
    @planet.user_id = current_user.id
    if @planet.save
      redirect_to planets_path(@planet)
    else
      render 'new'
    end
  end

  def new
    @planet = Planet.new
  end

  def destroy
    @planet.destroy
    redirect_to planets_path(@planet.list), status: :see_other
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :price, :desc, :photo)
  end
end
