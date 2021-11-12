class Api::V1::CoursesController < ApplicationController
  def index
    @courses = Course.all
    render json: @courses
  end

  def destroy
    @course = course.find(params[:id])
    @course.destroy
  end
end
