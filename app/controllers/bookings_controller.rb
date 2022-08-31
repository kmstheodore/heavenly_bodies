class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]

  # GET /bookinges or /bookinges.json
  def index
    @bookinges = booking.where(user_id: current_user.id)
  end

  # GET /bookinges/1 or /bookinges/1.json
  def show
  end

  # GET /bookinges/new
  def new
    @booking = booking.new
  end

  # GET /bookinges/1/edit
  def edit
  end

  # POST /bookinges or /bookinges.json
  def create
    @booking = booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_url(@booking), notice: "booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookinges/1 or /bookinges/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to booking_url(@booking), notice: "booking was successfully updated." }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
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
    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :planet_id, :user_id)
    end
end
