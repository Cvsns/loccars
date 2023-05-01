class BookingsController < ApplicationController
  before_action :set_car, only: [:create]

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car
    if @booking.save
      flash[:success] = "Réservation confirmée"
      redirect_to car_path(@booking.car)
    else
      flash[:error] = "La réservation a échoué. Veuillez vérifier les informations et réessayer."
      redirect_to car_path(@car)
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
