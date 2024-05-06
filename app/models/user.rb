class User < ApplicationRecord

  has_many :events, dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :attended_events, through: :attendances, source: :event


  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :description, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
