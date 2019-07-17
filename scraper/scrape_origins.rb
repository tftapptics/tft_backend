require 'open-uri'
require 'nokogiri'
require 'json'
require 'pry'


url = 'https://rankedboost.com/league-of-legends/teamfight-tactics/best-origin/'

html = open(url)

doc = Nokogiri::HTML(html)
origins = []

doc.css('div.perk-class-quad-wrap').each do |origin|
  tiers = []
  tier_info = []
  origin.css('li.ssbulitl').each do |origin_tier|
    tiers << origin_tier.children[1].text.to_i
    tier_info << origin_tier.text
  end
  origins.push({
    name: origin.children[0].children.last.text,
    thumbnail: origin.children[0].children[0].attributes["src"].value,
    summary: origin.children[2].text,
    tier_info: tier_info,
    tiers: tiers
    })

end


puts origins

json = JSON.pretty_generate(origins)
File.open("scraped_data/origins_data.json", 'w') { |file| file.write(json) }
