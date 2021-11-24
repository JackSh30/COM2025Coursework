require 'test_helper'

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
    sign_in @user
    @album = albums(:one)
    @artist = artists(:one)
  end

  test "should get index" do
    get albums_url
    assert_response :success
  end

  test "should get new" do
    get new_album_url, params: {album: { artist_id: @artist.id}}
    assert_response :success
  end

  test "should create album" do
    assert_difference('Album.count') do
      post albums_url, params: { album: { artist_id: @album.artist_id, description: @album.description, length: @album.length, numOfSongs: @album.numOfSongs, release: @album.release, title: @album.title } }
    end

    assert_redirected_to album_url(Album.last)
  end

  test "should show album" do
    get album_url(@album)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_url(@album)
    assert_response :success
  end

  test "should update album" do
    patch album_url(@album), params: { album: { artist_id: @album.artist_id, description: @album.description, length: @album.length, numOfSongs: @album.numOfSongs, release: @album.release, title: @album.title } }
    assert_redirected_to album_url(@album)
  end

  test "should destroy album" do
    assert_difference('Album.count', -1) do
      delete album_url(@album)
    end

    assert_redirected_to albums_url
  end
end
