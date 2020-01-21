class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users.to_json(serialize_data)
    end 



    
    private

    def serialize_data
        {:except => [:created_at,:updated_at]}
    end 

end
