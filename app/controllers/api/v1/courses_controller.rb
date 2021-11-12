class Api::V1::CoursesController < ApplicationController
  def show
    @course = Course.find(params[:id])
    render json: @course
  end

  def index
    @courses = Course.all
    render json: @courses
  end
end
