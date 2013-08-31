class Group < ActiveRecord::Base
  # belongs_to :mission
  belongs_to :teacher, :class_name => "User"
  has_many :students, through: :teams, class_name: "User", foreign_key: "team_id"
  has_many :teams
  has_many :missions, :class_name => "Mission", foreign_key: => "group_id"