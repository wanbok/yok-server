class Log < ActiveRecord::Base
  belongs_to :user

  scope :today, ->(date) { where("DATE(date) = DATE(?)", date) }
end
