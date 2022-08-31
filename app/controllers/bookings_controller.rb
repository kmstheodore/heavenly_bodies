class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]

  # GET /bookinges or /bookinges.json
  def index
    @bookinges = Booking.where(user_id: current_user.id)
  end

  # GET /bookinges/1 or /bookinges/1.json
  def show
  end

  # GET /bookinges/new
  def new
    @booking = Booking.new
  end

  # POST /bookinges or /bookinges.json
  def create
    @booking = Booking.new
    @booking.user_id = current_user.id
    @booking.planet_id = params[:planet_id]
    @booking.start_date = params[:start_date]
    @booking.end_date = params[:end_date]


    respond_to do |format|
      if @booking.save
        format.html { redirect_to root_path, notice: "booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /bookinges/1 or /bookinges/1.json
  def destroy
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to bookinges_url, notice: "booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.

end
