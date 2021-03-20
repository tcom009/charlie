class CreateTemperatureChanges < ActiveRecord::Migration[6.1]
  def change
    create_table :temperature_changes do |t|
      t.references :room, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.string :temperature_celsius

      t.timestamps
    end
  end
end
