class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end
  
  def new
    @song = Song.new
  end
  
  def create
    @song = Song.new(song_params(:name))
    @song.save
    redirect_to song_path(@song)
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  private
  
  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
