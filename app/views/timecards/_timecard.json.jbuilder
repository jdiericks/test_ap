json.extract! timecard, :id, :date, :return, :placements, :hours, :created_at, :updated_at
json.url timecard_url(timecard, format: :json)
