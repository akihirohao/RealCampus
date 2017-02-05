class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :studet
  has_one :chat

end
