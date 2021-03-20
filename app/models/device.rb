class Device < ApplicationRecord
  belongs_to :device_type
  belongs_to :home
  belongs_to :room
  validates :name , presence: true
end
