require 'open-uri'
require 'json'

p 'Creating ingredients ...'

Ingredient.destroy_all

ingredients = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

p 'Ingredients created.'
