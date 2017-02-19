class UserMypagesController < ApplicationController

  def index
    @reservation = Reservation.where(status: 1).where(user_id: current_user.id)
    @reservations = @reservation.order('time ASC')
    @reservation_shift = Reservation.where(user_id: current_user.id).order('time ASC')
  end

  def show
    @reservation = Reservation.find(params[:id])
    @chat = Chat.new
    # 表示するchatを更新したものを上に来るようにする
    @chat_order = @reservation.chats.order('id DESC')
  end

  def create
    Chat.create(chat_params)
    redirect_to user_mypage_path(params[:chat][:reservation_id])
  end

  def update
    Reservation.find(params[:id]).update(:status => 0, :student_id => "")
    redirect_to :action => 'index'
  end

  def chat_params
    @reservation = Reservation.find(params[:chat][:reservation_id])
    params.require(:chat).permit(:text, :name).merge(reservation_id: @reservation.id,  user_id: current_user.id)
  end

end
