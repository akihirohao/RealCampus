class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|

      t.text            :text
      t.integer         :reservation
      t.integer         :user_id
      t.integer         :student_id
    end
  end
end
