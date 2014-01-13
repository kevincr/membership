json.array!(@addresses) do |address|
  json.extract! address, :id, :address_type, :street, :city, :state, :zipcode
  json.url address_url(address, format: :json)
end
