json.array!(@groups) do |group|
  json.extract! group, :teacher_id, :size_of_team
  json.url group_url(group, format: :json)
end
