class Api::V1::CoursesController < ApplicationController
  def show
    @test = 'hello'
    render json: @test
  end
end
