class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_grill, only: [:new, :create]

  def index
    @booking = Booking.all
  end

  def show
  end

  def new
    @booking.user = current_user
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.grill = @grill
    if @booking.save
      redirect_to grill_path(@grill)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to root_url
  end

  def my_bookings
    @bookings = current_user.bookings
    @totals = []
    total = 0
    @bookings.each do |booking|
      total = (booking.grill.price * (booking.check_out - booking.check_in))
      if total.positive?
        @totals << total
      else
        @totals << booking.grill.price
      end
      # raise
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
# comment
  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :address, :grill_id)
  end

  def set_grill
    @grill = Grill.find(params[:grill_id])
  end
end
