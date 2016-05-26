class Student < ActiveRecord::Base
  has_many :classrooms, dependent: :destroy
  has_many :teachers, through: :classrooms
end
