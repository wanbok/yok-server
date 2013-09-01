class Log < ActiveRecord::Base
  belongs_to :student, :class_name => "User", :foreign_key => "user_id"

  scope :today, ->(date) { where("DATE(date) = DATE(?)", date) }
end
