class MoviesController < ApplicationController
  
  def index
  end

  def create
  	@moviename = params[:movie]
  	redirect_to search_path(@movie_name)
  end

  def search
  	@search = params[:result]
  	@results = SearchMovie.new(@movie_name).perform
  	@img = "https://image.tmdb.org/t/p/w500/"
  end
end