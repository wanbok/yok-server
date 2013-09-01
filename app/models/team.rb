class Team < ActiveRecord::Base
  belongs_to :group
  has_many :students, class_name: "User", foreign_key: "team_id"

  def teacher
    group.teacher
  end
end
