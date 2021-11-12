class Api::V1::CoursesController < ApplicationController
  def index
    @tests = Test.all
    render json: @tests
  end
  def show
    @test = 'hello'
    render json: @test
  end
end
