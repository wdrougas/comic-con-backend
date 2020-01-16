class MoviesController < ApplicationController

    def index
        movies = Movie.all 
        render json: movies.to_json(serialize_data)
    end 

    
    private

    def serialize_data
        {:except => [:created_at,:updated_at]}
    end 



end


