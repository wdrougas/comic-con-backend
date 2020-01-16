# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'rest-client' 

Movie.destroy_all

rm = RestClient.get('https://comicvine.gamespot.com/api/movies/?api_key=1bc3aaafa2e58de60dce5a3f1b73c8f995e8b254&format=json&limit=200')

movie_array = JSON.parse(rm)["results"] 

# byebug
movie_array.each do |movie|
    Movie.create(
        byebug
        budget: movie["budget"],
        image_url: movie["image"]["medium_url"],
        box_office_revenue:movie["box_office_revenue"] ,
        description: movie["description"],
        name: movie["name"],
        rating: movie["rating"],
        runtime: movie["runtime"]
    )
end 
