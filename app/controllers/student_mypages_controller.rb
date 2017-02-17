class StudentMypagesController < ApplicationController

  def index
    @reservation = Reservation.where(status: 1).where(student_id: current_student.id)
    @reservations = @reservation.order('time ASC')
    @reservation_shift = Reservation.where(student_id: current_student.id).order('time ASC')
  end

  def show
    @reservation = Reservation.find(params[:id])
    @chat = Chat.new
    # 表示するchatを更新したものを上に来るようにする
    @chat_order = @reservation.chats.order('id DESC')
  end

  def create
    Chat.create(chat_params)
    redirect_to student_mypage_path(params[:chat][:reservation_id])
  end

  def chat_params
    @reservation = Reservation.find(params[:chat][:reservation_id])
    params.require(:chat).permit(:text, :name).merge(reservation_id: @reservation.id,  student_id: current_student.id)
  end

end