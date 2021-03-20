class AddDescriptionToDeviceTypes < ActiveRecord::Migration[6.1]
  def change
    add_column :device_types, :description, :text
  end
end
