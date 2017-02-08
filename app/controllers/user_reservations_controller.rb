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
    @reservation = 
    Reservation.update(reservation_params)
    redirect_to action: :show
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

  private
    def reservation_params
      params.require(:reservation).permit(:status).merge(user_id: current_user.id)
    end
  end

  # private
  # def create_params
  #   params.requre(:chat).permit(:text, :reservation, :user_id, :student_id).merge(reservation: 検索結果のreservation.id!, student_id: 検索結果の？？？student.id, :user_id: current_user.id)
  # end