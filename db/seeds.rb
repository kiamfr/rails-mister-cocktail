# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

file_path = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json_file = open(file_path).read
ingredient_list = JSON.parse(json_file)
Ingredient.destroy_all
5.times do
  ingredient_item = ingredient_list["drinks"].sample["strIngredient1"]
  ingredient = Ingredient.new(name: ingredient_item)
  ingredient.save
end

#Ingredient.create(ingredient_list)
