require 'dotenv'
require 'themoviedb-api'

class SearchMovie

    def initialize(request)

        @search = request
    end

    def perform

        puts "connecting"

        Tmdb::Api.key(ENV['MOVIE_API_KEY'])

        puts "searching"
        @result =    Tmdb::Search.movie(@search).results

        @result.each do |movie|
            directed(movie)
        end

    end

    def directed(movie)

         Tmdb::Movie.director(movie.id).each do |director|
             movie[:director] = director.name        
         end   

    end
end

end