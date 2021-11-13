require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  setup do
    @artist = artists(:one)
  end

  test 'should not save album without artist' do
    album = Album.new

    album.title = 'Album Test'
    album.release = 2021-11-13
    album.numOfSongs = 10
    album.length = 60.00

    album.save
    refute album.valid?
  end

  test 'should not save album without title' do
    album = Album.new

    album.artist = @artist
    album.release = 2021-11-13
    album.numOfSongs = 10
    album.length = 60.00

    album.save
    refute album.valid?
  end

  test 'should not save album without release date' do
    album = Album.new

    album.title = 'Album Test'
    album.artist = @artist
    album.numOfSongs = 10
    album.length = 60.00

    album.save
    refute album.valid?
  end

  test 'should not save album without number of songs' do
    album = Album.new

    album.title = 'Album Test'
    album.artist = @artist
    album.release = 2021-11-13
    album.length = 60.00

    album.save
    refute album.valid?
  end

  test 'should not save album without length' do
    album = Album.new

    album.title = 'Album Test'
    album.artist = @artist
    album.release = 2021-11-13
    album.numOfSongs = 10

    album.save
    refute album.valid?
  end

  test 'should save valid album' do
    album = Album.new

    album.title = 'Album Test'
    album.artist = @artist
    album.release = 2021-11-13
    album.numOfSongs = 10
    album.length = 60.00

    album.save
    assert album.valid?
  end
end
