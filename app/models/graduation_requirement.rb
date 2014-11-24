class GraduationRequirement < ActiveRecord::Base
  has_many :requirement_categories
end
