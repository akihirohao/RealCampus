class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reservations
  has_many :students
  has_many :chats

  has_attached_file :avatar,
                  styles:  {medium: "300x300", thumb: "300x300#"}
  validates_attachment_content_type :avatar,
                  content_type: ["image/jpg", "image/jpeg", "image/png"]

  validates :nickname, presence: true
  validates :phone_number, presence: true
  validates :avatar, presence: true

end
