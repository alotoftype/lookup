json.array!(@physicians) do |physician|
  json.extract! physician, :id, :first_name, :last_name, :gender, :degree, :specialty_id
  json.url physician_url(physician, format: :json)
end
