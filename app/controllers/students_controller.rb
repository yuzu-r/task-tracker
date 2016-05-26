class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(student_params)
    if @student.valid?
      redirect_to students_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @student = Student.new
  end

  def index
    @students = Student.all
  end

  private
    def student_params
      params.require(:student).permit(:name)
    end

end
