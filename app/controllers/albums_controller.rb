class AlbumsController < ApplicationController
  before_action :set_album, only: %i[ show edit update destroy ]
  before_action :set_artist, only: [:new, :create]  #Albums must belong to an artist.
  before_action :authenticate_user!, only: %i[ new edit update destroy] #User must be logged in to make changes to albums relation.

  # GET /albums or /albums.json
  def index
    @albums = Album.all
  end

  # GET /albums/1 or /albums/1.json
  def show
  end

  # GET /albums/new
  def new
    @album = @artist.albums.new
  end

  # GET /albums/1/edit
  def edit
  end

  # POST /albums or /albums.json
  def create
    @album = @artist.albums.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: t('albums.success') }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albums/1 or /albums/1.json
  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, notice:  t('albums.update_success')}
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1 or /albums/1.json
  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice:  t('albums.destroy_success')}
      format.js { flash[:notice] = t('albums.destroy_success')}
      format.json { head :no_content }
    end
  end

  private

    # Every album belongs to an artist. This method sets the artist that the album belongs to.
    def set_artist
      @artist = Artist.find_by(id: params[:artist_id]) || Artist.find(album_params[:artist_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def album_params
      params.require(:album).permit(:artist_id, :title, :description, :release, :numOfSongs, :length)
    end
end
