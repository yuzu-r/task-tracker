class ClassroomsController < ApplicationController
  def create
    logger.info "params is #{params.inspect}"
    student = Student.find(params[:student_id])
    current_teacher.teach(student)
    redirect_to teacher_path(current_teacher)
  end

  def destroy
    logger.info "params is #{params.inspect}"
    student = Classroom.find(params[:id]).student
    current_teacher.unteach(student)
    redirect_to teacher_path(current_teacher)
  end
end
