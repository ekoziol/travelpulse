json.array!(@flights) do |flight|
  json.extract! flight, :integer, :string, :string, :integer, :integer, :float, :string, :string
  json.url flight_url(flight, format: :json)
end
