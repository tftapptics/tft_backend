require 'open-uri'
require 'nokogiri'
require 'json'
require 'pry'


url = 'https://www.metasrc.com/tft/items'

html = open(url)

doc = Nokogiri::HTML(html)
raw_items = []

doc.css('div.item-container')[0].children[0..7].each do |raw_item|
  raw_items.push({
    name: raw_item.attributes["data-sort-text"].value,
    thumbnail: raw_item.children[0].children[1].attributes["src"].value,
    stat_boost: raw_item.children[1].children[1].text
  }
)
end

puts raw_items



json = JSON.pretty_generate(raw_items)
File.open("scraped_data/raw_items_data.json", 'w') { |file| file.write(json) }
