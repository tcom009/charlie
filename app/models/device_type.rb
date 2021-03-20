# == Schema Information
#
# Table name: device_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class DeviceType < ApplicationRecord
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    
end
