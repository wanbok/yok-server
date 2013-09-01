json.array!(@groups) do |group|
  json.extract! group, :id, :teacher_id, :name, :size_of_team
  json.url group_url(group, format: :json)
end
