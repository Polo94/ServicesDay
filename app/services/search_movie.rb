class SearchMovie

require 'dotenv'
require 'themoviedb-api'

def initialize(input)
  @movie = input
end

def perform
	log_in_to_mvdb
	action(@movie)
end

def log_in_to_mvdb
Tmdb::Api.key(ENV['MOVIE_API_KEY'])
end

def action
  Tmdb::Search.movie(movie).results.each do |movie|
    movie_director = Tmdb::Movie.director(movie.id).each do |director|
    movie[:director] = director.name
  end
end





def find_movies
	
end

end