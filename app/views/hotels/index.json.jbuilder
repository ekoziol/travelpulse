json.array!(@hotels) do |hotel|
  json.extract! hotel, :interger, :integer, :string, :string, :float, :string, :interger
  json.url hotel_url(hotel, format: :json)
end
