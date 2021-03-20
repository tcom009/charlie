class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.datetime :event_date
      t.references :device, null: false, foreign_key: true
      t.boolean :is_on
      t.boolean :is_preprogrammed

      t.timestamps
    end
  end
end
