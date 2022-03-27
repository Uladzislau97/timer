# frozen_string_literal: true
require 'rails_helper'

RSpec.describe TimersController, type: :controller do
  describe 'POST create' do
    let(:params) do
      {
        hours: 1,
        minutes: 5,
        seconds: 20,
        url: 'https://requested.con'
      }
    end

    context 'valid params are sent' do
      it 'return code 200 with created timer id' do
      end
    end

    context 'invalid params are sent' do
      context 'time value is less than 0' do
        it 'returns code 400 and necessary error message' do
          invalid_params = params.merge(seconds: -2)

          post :create, params: { timer: invalid_params }

          expect(response.code).to eq('400')
          expect(JSON.parse(response.body)).to eq(
            'errors' => {
              'seconds' => ['must be greater than or equal to 0']
            }
          )
        end
      end

      context 'url is in wrong format' do
        it 'returns code 400 and necessary error message' do
          invalid_params = params.merge(url: 'wrong')

          post :create, params: { timer: invalid_params }

          expect(response.code).to eq('400')
          expect(JSON.parse(response.body)).to eq(
            'errors' => {
              'url' => ['is in invalid format']
            }
          )
        end
      end
    end

    context 'internal error' do
      it 'returns code 500 with necessary message' do
        expect(TimerContract).to receive(:new).and_raise('error')

        post :create, params: { timer: params }

        expect(response.code).to eq('500')
        expect(response.body).to eq('Internal server error')
      end
    end
  end

  describe 'GET show' do
    let(:timer) { create(:custom_timer) }

    context 'timer with id exists' do
      context 'timer is working' do
        it "returns timer's id and time left" do
        end
      end

      context "timer's work is finished" do
        it "returns timer's id and time left = 0" do
        end
      end
    end

    context 'unknown timer id' do
      it 'returns code 400 with necessary message' do
        get :show, params: { id: -1 }

        expect(response.code).to eq('400')
        expect(response.body).to eq('Not found timer -1')
      end
    end

    context 'internal error' do
      it 'returns code 500 with necessary message' do
        expect(CustomTimer).to receive(:find).and_raise('error')

        get :show, params: { id: 1 }

        expect(response.code).to eq('500')
        expect(response.body).to eq('Internal server error')
      end
    end
  end
end
