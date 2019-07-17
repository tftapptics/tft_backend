require 'open-uri'
require 'nokogiri'
require 'json'
require 'pry'


url = 'https://www.leagueofgraphs.com/tft/items'

html = open(url)

doc = Nokogiri::HTML(html)
recipes = []

doc.css('div.championBox')[8..43].each do |recipe|
  if recipe.attributes["data-search-keywords"].value.split(',')[1].include?('<br>')
    description = recipe.attributes["data-search-keywords"].value.split(',')[1..-3].join(' ').sub('<br>', ' ')
  else
    description = recipe.attributes["data-search-keywords"].value.split(',')[1..-3].join(' ')
  end
  recipes.push({
    name: recipe.attributes["data-search-keywords"].value.split(',')[0],
    item_1: recipe.attributes["data-search-keywords"].value.split(',')[-2],
    item_2: recipe.attributes["data-search-keywords"].value.split(',')[-1],
    description: description,
    thumbnail: recipe.children[1].children[1].attributes["src"].value.sub('//', '')
    })
end

puts recipes



json = JSON.pretty_generate(recipes)
File.open("scraped_data/recipes_data.json", 'w') { |file| file.write(json) }
