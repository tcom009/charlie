json.extract! temperature_change, :id, :room_id, :date, :time, :temperature_celsius, :created_at, :updated_at
json.url temperature_change_url(temperature_change, format: :json)
