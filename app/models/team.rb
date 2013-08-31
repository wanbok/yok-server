class Team < ActiveRecord::Base
  belongs_to :group
  has_many :students, class_name: "Student", foreign_key: "team_id"
end
