class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  private

  def activate

    if @student.active
      @student.save
      redirect to
    end

  end

    def set_student
      @student = Student.find(params[:id])
    end
end
