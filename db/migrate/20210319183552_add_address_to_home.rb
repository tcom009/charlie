class AddAddressToHome < ActiveRecord::Migration[6.1]
  def change
    add_column :homes, :address, :text
  end
end
