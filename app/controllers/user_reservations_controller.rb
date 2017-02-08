class UserReservationsController < ApplicationController

  def index
# ヒットした3つだけを取得したい
    @reservation_time = Reservation.search(params[:q])
    @reservations = @reservation_time.result.limit(3)

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
    @chat = Chat.new
    # @chat_reservation = Chat.find(params[:reservation_id])
    @reservation = Reservation.find(params[:id])
  end

  def create
    Chat.create(create_params)
    redirect_to action: :show
  end

end