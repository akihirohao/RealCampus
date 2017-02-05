class AddDateToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :date, :integer, :limit => 11
  end
end
