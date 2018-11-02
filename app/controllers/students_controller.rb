class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    # "/students/2/activate"
    @student = Student.find(params[:id])
    # Student.find(2)
    if @student.active == false
      @student.active = true
    else
      @student.active = false
    end
    @student.save
    # render :activate
    # redirect_to students_path(@student.id)
    # /students/@student.id
    redirect_to @student
    # /students/@student.id

  end


  private

  def set_student
    @student = Student.find(params[:id])
  end
end
