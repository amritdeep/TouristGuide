json.array!(@images) do |image|
  json.extract! image, :id, :image_name, :description_id_id
  json.url image_url(image, format: :json)
end
