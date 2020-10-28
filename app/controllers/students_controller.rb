class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(get_params)
    redirect_to student_path(@student)
  end

  def show
    get_student
  end

  def edit
    get_student
  end

  def update
    get_student
    @student.update(get_params)

    redirect_to student_path(@student)
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

  def get_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
