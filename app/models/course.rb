class Course < ActiveRecord::Base
  validates :name, :start_date, :end_date, :description, presence: true
end
