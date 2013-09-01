json.extract! @team, :group_id, :name
json.teacher do
  json.(@team.teacher, :name, :role)
end
json.students do
  json.array!(@team.students) do |student|
    json.(student, :name, :role)
    if student.avatar.present?
      json.avatar do
        json.(student.avatar, :head, :head_back, :head_front, :torso, :torso_back, :torso_front, :leg, :leg_back, :leg_front, :whole_back, :accessary)
      end
    end
  end
end
