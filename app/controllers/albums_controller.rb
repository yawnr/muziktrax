class AlbumsController < ApplicationController

  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to(album_url(album))
    else
      flash.now[:errors] = @album.errors.full_messages
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def update
    @album = Album.find(params[:id])

    if @album.update_attributes(album_params)
      redirect_to(album_url(album))
    else
      flash.now[:errors] = @album.errors.full_messages
      render :edit
    end
    
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
  end

  private

  def album_params
    params.require(:album).permit(:title, :format, :band_id)
  end

end
