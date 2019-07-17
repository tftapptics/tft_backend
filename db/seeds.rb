require "pry"
require 'factory_bot'
include FactoryBot::Syntax::Methods
champion_data = JSON.parse(File.read('./scraped_data/champion_data.json'))
class_type_data = JSON.parse(File.read('./scraped_data/classes_data.json'))
origin_data = JSON.parse(File.read('./scraped_data/origins_data.json'))
raw_item_data = JSON.parse(File.read('./scraped_data/raw_items_data.json'))

puts "CHAMPIONS"
champion_data.each do |data|
   champ = create(:champion,
    name: data["name"],
    champion_thumbnail: data["champion_thumbnail"],
    cost: data["cost"].to_i,
    health: data["health"],
    dmg: data["dmg"].to_i,
    armor: data["armor"].to_i,
    mr: data["mr"].to_i,
    atk_spd: data["atk_spd"].to_f,
    range: data["range"],
    ability_thumbnail: data["ability_thumbnail"],
    ability_info: data["ability_info"],
    class_origin_names: data["class_origin_names"]
  )
  puts "Champion #{champ.name} added to Database"
end

puts "CLASS_TYPES"
class_type_data.each do |data|
  class_type = create(:class_type,
    name: data["name"],
    thumbnail: data["thumbnail"],
    summary: data["summary"],
    tier_info: data["tier_info"],
    tiers: data["tiers"]
  )
  puts "#{class_type.name} Class added to Database"
end

puts "ORIGINS"
origin_data.each do |data|
  origin = create(:origin,
    name: data["name"],
    thumbnail: data["thumbnail"],
    summary: data["summary"],
    tier_info: data["tier_info"],
    tiers: data["tiers"]
  )
  puts "#{origin.name} Origin added to Database"
end

puts "RAW_ITEMS"
raw_item_data.each do |data|
  item = create(:raw_item,
    name: data["name"],
    thumbnail: data["thumbnail"],
    stat_boost: data["stat_boost"]
  )
  puts "#{item.name} Raw Item added to Database"
end
