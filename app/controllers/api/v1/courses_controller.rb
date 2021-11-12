class Api::V1::CoursesController < ApplicationController
  def create
    @course = Course.new(course_params)
    if @course.save
      render json: {
        success: 'Course successfully created',
      },
      status: :created
    else
      render json: {
        error: 'Course was not created',
      },
      status: :bad_request
    end
  end

  private
  
  def course_params
    params.require(:course).permit(:title, :description, :instructor_name, :image)
  end
end
