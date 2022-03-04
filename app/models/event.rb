class Event < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :event_date, presence: true
  validates :user_id, presence: true
  has_rich_text :description 
end
