require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test 'should not save artist without name' do
    artist = Artist.new

    artist.save
    refute artist.valid?

  end

  test 'should not save artist without active value' do
    artist = Artist.new

    artist.name = 'Test Artist'

    artist.save
    refute artist.valid?
  end

  test 'should save valid artist' do
    artist = Artist.new

    artist.name = 'Test Artist'
    artist.description = 'Test Description'
    artist.active = true

    artist.save
    assert artist.valid?
  end

  test 'should not save duplicate artist name' do
    artist1 = Artist.new
    artist1.name = 'Test Artist'
    artist1.active = true
    artist1.save
    assert artist1.valid?

    artist2 = Artist.new
    artist2.name = 'Test Artist'
    artist1.active = false
    artist2.save
    refute artist2.valid?
  end
end
