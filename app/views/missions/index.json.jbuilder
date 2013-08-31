json.array!(@missions) do |mission|
  json.extract! mission, :group_id, :content, :duration
  json.url mission_url(mission, format: :json)
end
