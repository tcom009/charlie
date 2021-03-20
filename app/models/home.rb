# == Schema Information
#
# Table name: homes
#
#  id         :integer          not null, primary key
#  address    :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Home < ApplicationRecord
    validates :name, :address, presence: true
end
