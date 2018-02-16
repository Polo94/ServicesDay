class MoviesController < ApplicationController

  def index
  end

  def search

  	@search = search_params[:movie]


  	@movies = SearchMovie.new(@search).perform

  	@img = "https://image.tmdb.org/t/p/w500/"
  end

  private 

  def search_params
  	params.require(:search).permit(:movie)
  end

end