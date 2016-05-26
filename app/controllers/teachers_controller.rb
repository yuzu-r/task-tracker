class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.create(teacher_params)
    if @teacher.valid?
      redirect_to teachers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @teacher=Teacher.find(params[:id])
    @all_students=Student.all
    #logger.info "current teacher is #{current_teacher}"
  end

  def index
    @teachers = Teacher.all
  end

  #def teaching
  #  @teacher = Teacher.find(params[:id])
  #  @students = @teacher.students
  #end

  private
    def teacher_params
      params.require(:teacher).permit(:name)
    end

end
