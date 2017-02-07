class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :studet
  has_one :chat
  private 
  ransacker :order_date do
    Arel.sql('date(order_date)')
  end

end