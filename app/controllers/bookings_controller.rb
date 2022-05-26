class BookingsController < ApplicationController
  def new
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new(booking_params)
    @booking.dog = @dog
    @booking.user = current_user
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  if @booking.save
    mail = BookingMailer.with(booking: @booking).create_confirmation
    mail.deliver_now
    redirect_to booking_path(@booking)
  else
    render :new
  end
  # def confirmation
  #   @booking = Booking.find(params[:id])
  #   redirect_to booking_path(@booking)
  # end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on)
  end
end
