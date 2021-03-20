# == Schema Information
#
# Table name: devices
#
#  id             :integer          not null, primary key
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  device_type_id :integer          not null
#  home_id        :integer          not null
#  room_id        :integer          not null
#
# Indexes
#
#  index_devices_on_device_type_id  (device_type_id)
#  index_devices_on_home_id         (home_id)
#  index_devices_on_room_id         (room_id)
#
# Foreign Keys
#
#  device_type_id  (device_type_id => device_types.id)
#  home_id         (home_id => homes.id)
#  room_id         (room_id => rooms.id)
#
class Device < ApplicationRecord
  belongs_to :device_type
  belongs_to :home
  belongs_to :room
  validates :name , presence: true
end
