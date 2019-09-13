class StudentsController < ApplicationController

  def index
    puts 'indexing'
    @students = Student.all
  end

  def show
    puts 'showing...'
    @student = Student.find(params[:id])
  end

  def new
    puts 'newing...'
  end

  def create
    puts'creating'
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
