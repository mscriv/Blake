class School < ActiveRecord::Base
  has_many :counselors
  has_many :events
end
