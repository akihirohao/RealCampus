class AddDepartmentToStudents < ActiveRecord::Migration
  def change
    add_column :students, :department, :text
  end
end
