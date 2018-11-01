
class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all

    # render :index
  end

  def show
    # @student from set_student
  end

  def activate
    # @student from set_student
    student_status = @student.active # false or true based on current status
    @student.active = !student_status
    @student.save

    redirect_to @student
    # or redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
