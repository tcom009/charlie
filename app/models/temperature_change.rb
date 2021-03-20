# == Schema Information
#
# Table name: temperature_changes
#
#  id                  :integer          not null, primary key
#  date                :date
#  temperature_celsius :string
#  time                :time
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  room_id             :integer          not null
#
# Indexes
#
#  index_temperature_changes_on_room_id  (room_id)
#
# Foreign Keys
#
#  room_id  (room_id => rooms.id)
#
class TemperatureChange < ApplicationRecord
  belongs_to :room
  validates :date , :temperature_celsius, :time , presence: true
end
