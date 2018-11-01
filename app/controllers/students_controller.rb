class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :active]

  def index
    @students = Student.all
  end

  def show
    # set_student already ran before_action
  end

  def active
    activation_status = @student.active # true
    @student.active = !activation_status #false
    # redirect_to students_path(@student.id) #/students/1
    @student.save
    redirect_to student_path #/students/1
    # redirect_to @student #/students/1
  end


  private

    def set_student
      @student = Student.find(params[:id])
      # @student
    end
end
