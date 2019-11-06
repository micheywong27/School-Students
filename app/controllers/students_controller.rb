class StudentsController < ApplicationController

  def index
    @students= Student.all
    @schools = School.all
  end
  
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    #this will direct to specific students page
      redirect_to student_path(@student)
  end

  def show
    #show page looks for this & shows specific student through their id
    @student = Student.find(params[:id])
  end

  def edit
    @student= Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to students_path(@student)
  end

  def delete
    #finding student with that id then destroy & redirect to students index
    student = Student.find(params[:id])
    student.destroy 
    redirect_to students_path
  end

  private 
  def student_params
    params.require(:student).permit(:name, :age, :school_id)
  end

end
