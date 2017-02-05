class StudentReservationsController < ApplicationController

  def create
  end

  def new
    @reservations = Reservation.new
  end

end
