json.array!(@secondary_tbls) do |secondary_tbl|
  json.extract! secondary_tbl, :id, :name, :description, :height, :width, :distance_starts, :distance_ends, :masters_id_id
  json.url secondary_tbl_url(secondary_tbl, format: :json)
end
