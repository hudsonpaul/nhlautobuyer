json.array!(@searches) do |search|
  json.extract! search, :id, :name, :team_id, :position_id, :style_id, :name_filter, :bin_filter
  json.url search_url(search, format: :json)
end
