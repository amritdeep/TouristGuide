json.array!(@descriptions) do |description|
  json.extract! description, :id, :description, :master_id_id
  json.url description_url(description, format: :json)
end
