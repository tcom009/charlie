json.extract! event, :id, :event_date, :device_id, :is_on, :is_preprogrammed, :created_at, :updated_at
json.url event_url(event, format: :json)
