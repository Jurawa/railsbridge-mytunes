require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  describe 'Artist' do
    describe '#as_json' do
      let(:artist) { Artist.create name: 'Nirvana' }
      let(:artist_json) { artist.as_json }

      it 'should have an empty tracks array' do
        artist_json[:tracks].must_equal []
      end

      it 'should include the tracks if they are there' do
        track = artist.tracks.create name: 'Melissa'
        artist_json[:tracks].must_include track.as_json
      end
    end

  end
end
