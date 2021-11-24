class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: [:destroy]

  def index
    @reservations = Reservation.all
    @user_reservations = @reservations.map do |reservation|
      {
        id: reservation.id,
        username: User.find(reservation.user_id).username,
        course: Course.find(reservation.course_id).title,
        start_date: reservation.start_date,
        image: Course.find(reservation.course_id).image
      }
    end
    render json: @user_reservations
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

  def destroy
    if @reservation.destroy
      render json: Reservation.all
    else
      render json: { error: 'Reservation deletion was unsuccessful' }
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservations_params
    params.require(:reservation).permit(:user_id, :course_id, :start_date)
  end
end
