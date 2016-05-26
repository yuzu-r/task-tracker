class Teacher < ActiveRecord::Base
  validates :name, presence: true
  has_many :classrooms, dependent: :destroy
  has_many :students, through: :classrooms

  def teach(student)
    if !self.teaching?(student)
      classrooms.create(student_id: student.id)
    end
  end

  def unteach(student)
    if self.teaching?(student)
      classrooms.find_by(student_id: student.id).destroy
    end
  end

  def teaching?(student)
    students.include?(student)
  end

end
