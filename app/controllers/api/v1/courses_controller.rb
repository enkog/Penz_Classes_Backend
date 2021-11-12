class Api::V1::CoursesController < ApplicationController
  def index
    @courses = Course.all
    render json: @courses
  end

  def show
    @course = Course.find(params[:id])
    render json: @course
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      render json: {
        success: 'Course successfully created'
      },
             status: :created
    else
      render json: {
        error: 'Course was not created'
      },
             status: :bad_request
    end
  end

  def destroy
    @course = course.find(params[:id])
    @course.destroy
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :instructor_name, :image)
  end
end
