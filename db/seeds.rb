# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

serialized_ingredients = open(url).read

ingredients = JSON.parse(serialized_ingredients)

ingredients["drinks"].each do |ingredient|
  Ingredient.new(name: ingredient["strIngredient1"]).save
end

100.times do
url2 = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
serialized_cocktails = open(url2).read
cocktails = JSON.parse(serialized_cocktails)

name = cocktails.first[1][0]["strDrink"]
picture = cocktails.first[1][0]["strDrinkThumb"]
Cocktail.new(name: name,image_url: picture).save
end
