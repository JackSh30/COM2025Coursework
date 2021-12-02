require 'test_helper'

class SongTest < ActiveSupport::TestCase
  setup do
    @album = albums(:one)
  end

  test 'should not save song without album' do
    song = Song.new

    song.title = 'Test Song'
    song.length = 1.00

    song.save
    refute song.valid?
  end

  test 'should not save song without title' do
    song = Song.new

    song.album = @album
    song.length = 1.00

    song.save
    refute song.valid?

  end

  test 'should not save song without length' do
    song = Song.new

    song.album = @album
    song.title = 'Test Song'

    song.save
    refute song.valid?
  end

  test 'should save valid song' do
    song = Song.new

    song.album = @album
    song.title = 'Test Song'
    song.length = 1.00

    song.save
    assert song.valid?    
  end
end
