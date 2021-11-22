require 'swagger_helper'

describe 'Reservations API' do

  path '/api/v1/reservations' do

    post 'Creates a reservation' do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          user_id: { type: :integer },
          course_id: { type: :integer },
          start_date: { type: :date }
        },
        required: [ 'user_id', 'course_id', 'start_date' ]
      }

      response '201', :created do
        let(:reservation) {
          {
            user_id: 15,
            course_id: 35,
            start_date: '2021-11-20'
          }
        }
        run_test!
      end

      response '400', :bad_request do
        let(:reservation) { { user_id: 15 } }
        run_test!
      end
    end
  end
end
