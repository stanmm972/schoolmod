class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    if @course.valid?
      redirect_to courses_path
    else
      flash[:errors] = @course.errors.full_messages
      redirect_to new_course_path
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Student.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

  private
    def course_params
      params.require(:course).permit(:name_course)
    end
end

