class Api::V1::ReservationsController < ApplicationController
  def index
    render json: Reservation.all
  end
  def create
    @reservation = Reservation.new(reservations_params)
    if @reservation.save
      render json: {
        success: 'Reservation successful'
      },
             status: :created
    else
      render json: {
        error: 'Reservation was not created'
      },
             status: :bad_request
    end
  end

  private

  def reservations_params
    params.require(:reservation).permit(:user_id, :course_id, :start_date)
  end
end
