class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  after_create :welcome_send
  
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  has_many :admin_events, class_name: 'Event', foreign_key: 'admin_id'
  has_many :attendances
  has_many :events, through: :attendances
  has_one_attached :avatar
  
end
