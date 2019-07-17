require 'open-uri'
require 'nokogiri'
require 'json'
require 'pry'


url = 'https://www.metasrc.com/tft/champions'
base_url = 'https://www.metasrc.com'

html = open(url)

doc = Nokogiri::HTML(html)
champions = []
table = doc.at('table')

table.search('tr').drop(1).each do |tr|
  url_ext = tr.children[0].children[1].attributes["href"].value
  url_ext = '/tft/champion/yasuo'
  champ_info = open(base_url + url_ext)
  sleep 1 until champ_info
  r = Nokogiri::HTML(champ_info)

  name = r.css('div.col-xs-2')[0].children[0].attributes["alt"].value
  champion_thumbnail = r.css('div.col-xs-2')[0].children[0].attributes["src"].value
  table = r.search('tr')
  cost = table[0].children[1].text
  health = table[1].children[1].text
  dmg = table[2].children[1].text
  armor = table[3].children[1].text
  mr = table[4].children[1].text
  atk_spd = table[5].children[1].text
  range = table[6].children[1].text
  ability_thumbnail = r.css('div.col-xs-2')[1].children[0].attributes["src"].value

  ability_info = []
  r.css('div.col-xs-10')[0].children.each do |info|
    ability_info.push(info.text)
  end

  class_origin_names = []
  r.css('div.col-xs-3').each do |origin_class|
    class_origin_names.push(origin_class.children.children[0].children[2].text)
  end

  got_info = true

  sleep 1 until got_info == true

  champions.push(
    name: name,
    champion_thumbnail: champion_thumbnail,
    cost: cost,
    health: health,
    dmg: dmg,
    armor: armor,
    mr: mr,
    atk_spd: atk_spd,
    range: range,
    ability_thumbnail: ability_thumbnail,
    ability_info: ability_info,
    class_origin_names: class_origin_names
  )

end
puts champions


json = JSON.pretty_generate(champions)
File.open("scraped_data/champion_data.json", 'w') { |file| file.write(json) }
