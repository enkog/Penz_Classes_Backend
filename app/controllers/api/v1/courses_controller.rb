class Api::V1::CoursesController < ApplicationController
  def index
    @tests = ['hello', 'hi', 'how are you?']
    render json: @tests
  end

  def show
    @test = 'hello'
    render json: @test
  end
end
