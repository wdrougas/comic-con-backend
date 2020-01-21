class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all 
        render json:favorites.to_json(serialized_data)
    end 

  
    def create 
        favorite = Favorite.create(strong_params)
        render json:favorite.to_json(serialized_data)
    end 
  
    private 

    def strong_params 
        params.require(:favorite).permit(:user_id , :movie_id)
    end 

    def serialized_data
        {:except => [:created_at,:updated_at]}
    end 

end

