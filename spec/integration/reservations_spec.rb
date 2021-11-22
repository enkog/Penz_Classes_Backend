require 'swagger_helper'

describe 'Reservations API' do
  path '/api/v1/reservations' do
    get 'List all reservations' do
      tags 'Reservations'
      produces 'application/json'

      response '200', :success do
        let!(:reservation) { create(:reservation) }
        run_test!
      end
    end

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
        required: %w[user_id course_id start_date]
      }

      response '201', :created do
        let(:reservation) do
          {
            user_id: 15,
            course_id: 35,
            start_date: '2021-11-20'
          }
        end
        run_test!
      end

      response '400', :bad_request do
        let(:reservation) { { user_id: 15 } }
        run_test!
      end
    end
  end

  path '/api/v1/reservations/{id}' do
    delete 'Delete reservation by id' do
      tags 'Reservations'
      parameter name: :id, in: :path, type: :integer

      response '200', :success do
        let!(:id) { create(:reservation).id }
        run_test!
      end

      response '404', :not_found do
        let!(:id) { 'Couldn\'t find Reservation with given id' }
        run_test!
      end
    end
  end
end
