class StudentReservationsController < ApplicationController

  def create
    Reservation.create(reservation_params)
  end

  def new
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find(params[:id])
    @chat = Chat.new
    # 表示するchatを更新したものを上に来るようにする
    @chat_order = @reservation.chats.order('id DESC')
  end

  private

  def reservation_params
    params.require(:reservation).permit(:time, :status).merge(student_id: current_student.id)
  end

end
