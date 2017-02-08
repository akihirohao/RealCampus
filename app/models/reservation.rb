class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :student
  has_many :chats

end