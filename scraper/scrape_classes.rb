require 'open-uri'
require 'nokogiri'
require 'json'
require 'pry'


url = 'https://rankedboost.com/league-of-legends/teamfight-tactics/best-class/'

html = open(url)

doc = Nokogiri::HTML(html)
classes = []

doc.css('div.perk-class-quad-wrap').each do |_class|
  tiers = []
  tier_info = []
  _class.css('li.ssbulitl').each do |class_tier|
    tiers << class_tier.children[1].text.to_i
    tier_info << class_tier.text
  end
  classes.push({
    name: _class.children[0].children.last.text,
    thumbnail: _class.children[0].children[0].attributes["src"].value,
    summary: _class.children[2].text,
    tier_info: tier_info,
    tiers: tiers
    })

end

puts classes

json = JSON.pretty_generate(classes)
File.open("scraped_data/classes_data.json", 'w') { |file| file.write(json) }
