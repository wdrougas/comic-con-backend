class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all 
        render json:favorites.to_json(serialized_data)
    end 

  
    def create 
        favorite = Favorite.create(strong_params)
        if favorite.valid? 
        #  render json: favorite.to_json(serialized_data)
        render json: {message: "Movie added to favorites!"}
         else 
        render json: {status: 'error', code: 4000, message: "Movie already added to favorites"}
         end
    end 
  
    private 

    def strong_params 
        params.require(:favorite).permit(:user_id , :movie_id)
    end 

    def serialized_data
        {:except => [:created_at,:updated_at]}
    end 

end

