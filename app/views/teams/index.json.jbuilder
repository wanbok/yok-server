json.array!(@teams) do |team|
  json.extract! team, :group_id, :name
  json.url team_url(team, format: :json)
end
