class ChangePhonenumberToUsers < ActiveRecord::Migration
  def change
  remove_column :users, :phone_number, :integer
  add_column :users, :phone_number, :integer, :limit => 11
  end

  def change
  remove_column :students, :phone_number, :integer
  add_column :students, :phone_number, :integer, :limit => 11
  end

end
