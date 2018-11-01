class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
    # @student from set_student
  end

  def activate
    # @student from set_student
    student_status = @student.active #false or true based on current status
    @student.active = !student_status #active attribute in the table is going to be the opposite of what it originally was
    @student.save
    redirect_to @student
  end

  private

    def set_student
      #params -> {id: 1}
      @student = Student.find(params[:id])
      # @student
    end
end
