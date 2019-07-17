require "pry"
require 'factory_bot'
include FactoryBot::Syntax::Methods
champion_data = JSON.parse(File.read('./scraped_data/champion_data.json'))
class_type_data = JSON.parse(File.read('./scraped_data/classes_data.json'))
origin_data = JSON.parse(File.read('./scraped_data/origins_data.json'))
raw_item_data = JSON.parse(File.read('./scraped_data/raw_items_data.json'))
recipe_data = JSON.parse(File.read('./scraped_data/recipes_data.json'))

# "CHAMPIONS"
champion_data.each do |data|
   champ = create(:champion,
    name: data["name"],
    champion_thumbnail: data["champion_thumbnail"],
    cost: data["cost"],
    health: data["health"],
    dmg: data["dmg"],
    armor: data["armor"],
    mr: data["mr"],
    atk_spd: data["atk_spd"],
    range: data["range"],
    ability_thumbnail: data["ability_thumbnail"],
    ability_info: data["ability_info"],
    class_origin_names: data["class_origin_names"]
  )
end

# "CLASS_TYPES"
class_type_data.each do |data|
  class_type = create(:class_type,
    name: data["name"],
    thumbnail: data["thumbnail"],
    summary: data["summary"],
    tier_info: data["tier_info"],
    tiers: data["tiers"]
  )
end

# "ORIGINS"
origin_data.each do |data|
  origin = create(:origin,
    name: data["name"],
    thumbnail: data["thumbnail"],
    summary: data["summary"],
    tier_info: data["tier_info"],
    tiers: data["tiers"]
  )
end

# "RAW_ITEMS"
raw_item_data.each do |data|
  item = create(:raw_item,
    name: data["name"],
    thumbnail: data["thumbnail"],
    stat_boost: data["stat_boost"]
  )
end

# "RECIPES"
recipe_data.each do |data|
  recipe = create(:recipe,
    name: data["name"],
    item_1: data["item_1"],
    item_2: data["item_2"],
    description: data["description"],
    thumbnail: data["thumbnail"]
  )
end
