class AddReservationToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :user_id, :integer
    add_column :reservations, :student_id, :integer
  end
end
