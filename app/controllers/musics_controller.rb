class MusicsController < ApplicationController

  def index
    @musics = Music.all
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(params[:music])
    respond_to do |format|
      if @music.save
        format.html { redirect_to musics_path }
      end
    end
  end

  def destroy
    @music = Music.find(params[:id])
    respond_to do |format|
      if @music.destroy
        format.html { redirect_to musics_path }
      end
    end
  end

  def edit
    @music = Music.find(params[:id])
  end

  def update
    @music = Music.find(params[:id])
    respond_to do |format|
      if @music.update_attributes(params[:music])
        format.html { redirect_to musics_path }
      end
    end
  end
end
