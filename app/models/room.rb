class Room < ApplicationRecord
  belongs_to :home
  validates :name , :home , presence: true
end
