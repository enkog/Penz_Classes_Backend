require 'swagger_helper'

describe 'Courses API' do

  path '/api/v1/courses' do

    get 'list courses' do
      tags 'Courses'
      consumes 'application/json', 'application/xml'

      response '200', :OK do
        let!(:course) { create(:course) }
        run_test!
      end
    end
  end

  
end
