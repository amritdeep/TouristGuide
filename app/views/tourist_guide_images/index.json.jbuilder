json.array!(@tourist_guide_images) do |tourist_guide_image|
  json.extract! tourist_guide_image, :id, :image_name, :image_createdby, :description_id_id
  json.url tourist_guide_image_url(tourist_guide_image, format: :json)
end
