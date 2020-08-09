class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @status = @student.active
  end

  def activate
    @student = Student.find(params[:id])
    @status = @student.active
    if @status == true
      @student.update_attribute(:active, false)
    elsif @status == false
      @student.update_attribute(:active, true)
    end 
    redirect_to student_path(@student)
 
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end