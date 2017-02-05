class Chat < ActiveRecord::Base

  belongs_to :reservation
  belongs_to :user
  belongs_to :student

end
