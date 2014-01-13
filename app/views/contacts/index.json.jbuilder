json.array!(@contacts) do |contact|
  json.extract! contact, :id, :title, :first_name, :last_name, :member_id
  json.url contact_url(contact, format: :json)
end
