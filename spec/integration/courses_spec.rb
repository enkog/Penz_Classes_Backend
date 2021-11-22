require 'swagger_helper'

describe 'Courses API' do

  path '/api/v1/courses' do

    get 'List all courses' do
      tags 'Courses'
      produces 'application/json', 'application/xml'

      response '200', :success do
        let!(:course) { create(:course) }
        run_test!
      end
    end
  end

  path '/api/v1/courses/{id}' do

    get 'Retrieves a course' do
      tags 'Courses'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', :success do
        schema type: :object,
          properties: {
            id: { type: :integer },
            title: { type: :string },
            description: { type: :string },
            instructor_name: { type: :string },
            image: { type: :string },
            created_at: { type: :string },
            updated_at: { type: :string }
          },
          required: [ 'id', 'title', 'description', 'instructor_name', 'image' ]

        let(:id) { Course.create(:course).id }
        run_test!
      end

      response '404', :not_found do
        let(:id) { 'Couldn\'t find Course with given id' }
        run_test!
      end
    end
  end
end
