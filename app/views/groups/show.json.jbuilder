json.extract! @group, :teacher_id, :size_of_team, :students do
  json.array!(@group.students) do |students|
    json.extract! students, :name, :role, :avatar
  end
end
