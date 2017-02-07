class UserReservationsController < ApplicationController

  def index
# ヒットした3つだけを取得したい
    @reservation_time = Reservation.search(params[:q][:time_eq]).result
    binding.pry

    # @user_reservations = Reservations.select params[:student_id].limit(3).count(:student_id)
    # @karams = @user_reservation.select params[:nickname, :avatar, :department]

    #  @karams = Students.find params[:nickname, :avatar, :department]

# 三つのカラムだけを取得
    # Reservation.find(:first, :select => "nickname, avatar, department")
  end

  def new
    @time = userが検索した時間を定義する
    @user = 三つの中で選択されたものを定義する
    @reservation = Reservation.update
  end

  def search
    # binding.pry
    @times = Reservation.search(params[:q])
    # @user_reservations        = @time.result
  end

  def show
    @chat = Chat.new
    @chat_reservation = Chat.find(params[:reservation_id])
    @reservation = Reservation.find params[:id]
  end

  def create
    Chat.create(create_params)
    redirect_to action: :show
  end

  private
  # def create_params
  #   params.requre(:chat).permit(:text, :reservation, :user_id, :student_id).merge(reservation: 検索結果のreservation.id!, student_id: 検索結果の？？？student.id, :user_id: current_user.id)
  # end

end
