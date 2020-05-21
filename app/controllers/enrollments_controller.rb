class EnrollmentsController < ApplicationController
  def index

  end

  def new
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.create(enrollment_params)
    redirect_to student_path(@enrollment.student)
  end

  def destroy
    @enrollment = Enrollment.find(params[:id])
    @student = @enrollment.student
    @enrollment.destroy
    redirect_to student_path(@student)
  end

  private
  def enrollment_params
    params.require(:enrollment).permit(:course_id, :student_id,)
  end
end
