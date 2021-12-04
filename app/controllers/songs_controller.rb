class SongsController < ApplicationController
  before_action :set_song, only: %i[ show edit update destroy ]
  before_action :set_album, only: [:new, :create] #Songs belong to an album.
  before_action :authenticate_user!, only: %i[ new edit update destroy] #User must be logged in to make changes to songs relation.


  # GET /songs or /songs.json
  def index
    @songs = Song.all
  end

  # GET /songs/1 or /songs/1.json
  def show
  end

  # GET /songs/new
  def new
    @song = @album.songs.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs or /songs.json
  def create
    @song = @album.songs.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: t('songs.success') }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songs/1 or /songs/1.json
  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: t('songs.update_success') }
        format.json { render :show, status: :ok, location: @song }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1 or /songs/1.json
  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url, notice: t('songs.destroy_success') }
      format.js { flash[:notice] = t('songs.destroy_success')}
      format.json { head :no_content }
    end
  end

  private

    #Method to set album that song belongs to.
    def set_album
      @album = Album.find_by(id: params[:album_id]) ||
      Album.find(song_params[:album_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def song_params
      params.require(:song).permit(:album_id, :title, :length)
    end
end
