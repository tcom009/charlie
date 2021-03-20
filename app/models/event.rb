# == Schema Information
#
# Table name: events
#
#  id               :integer          not null, primary key
#  event_date       :datetime
#  is_on            :boolean
#  is_preprogrammed :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  device_id        :integer          not null
#
# Indexes
#
#  index_events_on_device_id  (device_id)
#
# Foreign Keys
#
#  device_id  (device_id => devices.id)
#
class Event < ApplicationRecord
  belongs_to :device
  validates :event_date , presence: true

end
