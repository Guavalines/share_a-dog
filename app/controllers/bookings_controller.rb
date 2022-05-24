class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.list = @list
    if @booking.save
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
