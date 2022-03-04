class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth, presence: true
  validates :phone_number, presence: true, length: { minimum: 10, maximum: 10 }
  validates :genre, presence: true
  validates :location, presence: true
  validates :user, presence: true
end
