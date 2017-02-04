class AddPhonenumberToStudents < ActiveRecord::Migration
  def change
    add_column :students, :phone_number, :integer
  end
end
