require 'swagger_helper'

describe 'Users API' do
  path '/api/v1/users' do
    get 'List all users' do
      tags 'Users'
      produces 'application/json'

      response '200', :success do
        let!(:user) { create(:user) }
        run_test!
      end
    end
  end

  path '/api/v1/signup' do
    post 'Register a user' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string }
        },
        required: %w[username]
      }

      response '201', :created do
        let(:user) do
          {
            username: 'Dahaslkdjfklas',
            token: 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNTcsImV4cCI6MTYzNzY3OTUzOH0.2MPoTQnLwA-5RgbDyF7rzplM7gIIuB5PXCS3-foWJ9I'
          }
        end
        run_test!
      end

      response '400', :bad_request do
        let(:user) { {} }
        run_test!
      end
    end
  end

  path '/api/v1/login' do
    post 'Login a user' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string }
        },
        required: %w[username]
      }

      response '201', :created do
        let(:user) do
          {
            username: 'Dahaslkdjfklas',
            token: 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNTcsImV4cCI6MTYzNzY3OTUzOH0.2MPoTQnLwA-5RgbDyF7rzplM7gIIuB5PXCS3-foWJ9I'
          }
        end
        run_test!
      end

      response '500', :internal_server_error do
        let(:user) { {} }
        run_test!
      end
    end
  end

  path '/api/v1/logout' do
    delete 'Logout a user' do
      tags 'Users'
      parameter name: :user, in: :path, type: :string

      response '200', :success do
        let!(:user) { create(:user) }
        run_test!
      end
    end
  end
end
