class BookingsController < ApplicationController

  def new
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new
  end

    def show
        @booking = Booking.find(params[:id])
    end

  def create
    @booking = Booking.new(booking_params)

    @dog = Dog.find(params[:dog_id])
    @booking.dog = @dog


    if user_signed_in?
      @user = current_user
    else
      @user = User.first
    end

    @booking.user = @user
    if @booking.save
      redirect_to dog_booking_path(@booking.dog, @booking)
        else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
