require 'json'
require 'open-uri'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_list_raw = open(url).read
ingredient_list_clean = JSON.parse(ingredient_list_raw)

puts 'Seeding start'
  ingredient_list_clean['drinks'].each do |ingredient|
  puts 'Added one ingredient'
  Ingredient.create(name: ingredient['strIngredient1'])
  end
puts 'Seeding end'
