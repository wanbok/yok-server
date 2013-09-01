class Group < ActiveRecord::Base
  # belongs_to :mission
  belongs_to :teacher, :class_name => "User"
  has_many :students, through: :teams, class_name: "User", foreign_key: "team_id"
  has_many :teams
  has_many :missions
  
  def add_student_by_team(user)
    team = nil
    teams.each do |t|
      team = t if (t.students.count < (size_of_team || 4))
    end
    p team
    team = teams.create!({name: "#{teams.count + 1}조"}) if team.nil?
    team.group = instance
    user.team = team
    user
  end

  def instance
    return self
  end
end