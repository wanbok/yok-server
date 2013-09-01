json.extract! @group, :teacher_id, :size_of_team
json.teacher do
  json.(@group.teacher, :name, :role)
end
json.students do
  json.array!(@group.students) do |student|
    json.(student, :name, :role)
    if student.avatar.present?
      json.avatar do
        json.(student.avatar, :head, :head_back, :head_front, :torso, :torso_back, :torso_front, :leg, :leg_back, :leg_front, :whole_back, :accessary)
      end
    end
  end
end
