# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  home_id    :integer          not null
#
# Indexes
#
#  index_rooms_on_home_id  (home_id)
#
# Foreign Keys
#
#  home_id  (home_id => homes.id)
#
class Room < ApplicationRecord
  belongs_to :home
  validates :name , :home , presence: true
end
