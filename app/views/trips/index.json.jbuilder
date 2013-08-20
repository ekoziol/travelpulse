json.array!(@trips) do |trip|
  json.extract! trip, :integer, :integer, :integer, :float, :float, :float, :string, :string
  json.url trip_url(trip, format: :json)
end
