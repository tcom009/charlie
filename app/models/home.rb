class Home < ApplicationRecord
    validates :name, :address, presence: true
end
