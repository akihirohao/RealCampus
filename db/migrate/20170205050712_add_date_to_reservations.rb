class AddDateToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :date, :integer
  end
end
