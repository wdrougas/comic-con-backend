class AuthController < ApplicationController

    # def create # POST /api/v1/login
    #     render json:User.find_by(username: params[:username])
    # end

    def create 
        user = User.find_by(username: params[:username])
        render json:user.to_json(serialized_data)
    end  

    private

    def serialized_data
        {:except => [:created_at,:updated_at]}
    end 

  end
  
  
  # @user = User.find_by(username: params[:username])
  # if @user && @user.authenticate(params[:password])
  # end 

