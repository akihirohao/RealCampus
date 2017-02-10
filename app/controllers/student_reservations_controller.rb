class StudentReservationsController < ApplicationController

  def create
    Reservation.create(reservation_params)
  end

  def new
    @reservation = Reservation.new
  end

  private
  def reservation_params
    params.require(:reservation).permit(:time, :status).merge(student_id: current_student.id)
  end

end
