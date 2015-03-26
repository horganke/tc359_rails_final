json.array!(@characters) do |character|
  json.extract! character, :id, :name, :powers, :first_appearance, :good, :evil
  json.url character_url(character, format: :json)
end
