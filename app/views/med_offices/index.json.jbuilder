json.array!(@med_offices) do |med_office|
  json.extract! med_office, :id, :region, :name, :address, :parking, :hours, :cross_street, :landmark, :fax, :urgent, :routine
  json.url med_office_url(med_office, format: :json)
end
