class UserReservationsController < ApplicationController

  def index
# ヒットした3つだけを取得したい
    @reservation_time = Reservation.search(params[:q]).result
    @reservations = @reservation_time.where(status: 0).limit(3)

    @time = params[:q][:time_eq]
  end

  def new
    @reservation = Reservation.find(params[:format])
    @time = @reservation.time
  end

  def update
    Reservation.find(params[:id]).update(:status => 1, :user_id => current_user.id)
    redirect_to :action => 'show', :id => params[:id]
  end

  def search
    @q = Reservation.search
    # @user_reservations        = @time.result
  end

  def show
    @reservation = Reservation.find(params[:id])
    @chat = Chat.new
    # 表示するchatを更新したものを上に来るようにする
    @chat_order = @reservation.chats.order('id DESC')
  end

  def create
    Chat.create(chat_params)
    redirect_to user_reservation_path(params[:chat][:reservation_id])
  end

  private
  def chat_params
    @reservation = Reservation.find(params[:chat][:reservation_id])
    params.require(:chat).permit(:text).merge(reservation: @reservation, user_id: current_user.id, student_id: @reservation.student.id)
  end



end