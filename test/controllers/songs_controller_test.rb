require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
    sign_in @user
    @song = songs(:one)
    @album = albums(:one)
  end

  test "should get index" do
    get songs_url
    assert_response :success
    assert_select 'h2', 'SONGS'
    assert_select 'h3', "To Create a new song, go to an album and click 'Add Song'!"
  end

  test "should get new" do
    get new_song_url, params: {song: { album_id: @album.id}}
    assert_response :success
  end

  test "should create song" do
    assert_difference('Song.count') do
      post songs_url, params: { song: { album_id: @song.album_id, length: @song.length, title: @song.title } }
    end

    assert_redirected_to song_url(Song.last)
  end

  test "should show song" do
    get song_url(@song)
    assert_response :success
  end

  test "should get edit" do
    get edit_song_url(@song)
    assert_response :success
  end

  test "should update song" do
    patch song_url(@song), params: { song: { album_id: @song.album_id, length: @song.length, title: @song.title } }
    assert_redirected_to song_url(@song)
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete song_url(@song)
    end

    assert_redirected_to songs_url
  end
end
