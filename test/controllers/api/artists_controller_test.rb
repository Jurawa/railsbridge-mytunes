require 'test_helper'


class Api::ArtistsControllerTest < ActionController::TestCase
  describe 'Api::ArtistsController' do
    describe 'index' do
      before do
        3.times do |i|
          Artist.create name: "artist#{i}"
        end

        get :index, format: :json
      end

      it 'gets the index' do
        response.must_be :success?
      end

      it 'returns some artists' do
        JSON.parse(response.body).count.must_equal 3
      end
    end

    describe 'create' do
      let(:create_params) {
        {
          name: 'Moby',
        }
      }

      it 'creates a new artist' do
        Artist.count.must_equal 0
        post :create, { artist: create_params, format: :json }
        Artist.count.must_equal 1
        Artist.first.name.must_equal 'Moby'
      end

    end
  end
end
