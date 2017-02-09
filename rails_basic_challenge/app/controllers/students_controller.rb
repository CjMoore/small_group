class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @address = Address.new
  end

  def create
    @student = Student.new(student_params)
    
    @student.save

    redirect_to students_path
  end

  def student_params
    params.require(:student).permit(:name)
  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy

    redirect_to students_path
  end

end
