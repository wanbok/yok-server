json.extract! @team, :group_id, :name, :students do
  json.array!(@team.students) do |students|
    json.extract! students, :name, :role, :avatar
  end
end