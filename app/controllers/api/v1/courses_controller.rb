class Api::V1::CoursesController < ApplicationController
  def index
    render json: Course.all
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
    Course.find(params[:id]).destroy!
    render json: Course.all
  end

  private

  def course_params
    image = Cloudinary::Uploader.upload(params[:image])
    params.permit(:title, :description, :instructor_name).merge(image: image['url'])
  end
end
