class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :movie 
    validates :user_id, :movie_id , presence: true
    validates :user_id, :movie_id , uniqueness: true 
end
