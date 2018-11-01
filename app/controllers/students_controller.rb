class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :active]

  def index
    @students = Student.all
  end

  def show
  #dont need to write here because before_action is calling set_student
  end

  def active #this is a method that connects the /students/:id/activate
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
    end
end
