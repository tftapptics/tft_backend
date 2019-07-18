require "pry"
require 'factory_bot'
include FactoryBot::Syntax::Methods
champion_data = JSON.parse(File.read('./scraped_data/champion_data.json'))
class_type_data = JSON.parse(File.read('./scraped_data/classes_data.json'))
origin_data = JSON.parse(File.read('./scraped_data/origins_data.json'))
raw_item_data = JSON.parse(File.read('./scraped_data/raw_items_data.json'))
recipe_data = JSON.parse(File.read('./scraped_data/recipes_data.json'))

# "CLASS_TYPES"
class_type_data.each do |data|
  create(:origin_class_type,
    name: data["name"],
    thumbnail: data["thumbnail"],
    summary: data["summary"],
    tier_info: data["tier_info"],
    tiers: data["tiers"]
  )
end

# "ORIGINS"
origin_data.each do |data|
  create(:origin_class_type,
    name: data["name"],
    thumbnail: data["thumbnail"],
    summary: data["summary"],
    tier_info: data["tier_info"],
    tiers: data["tiers"]
  )
end

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
    ability_info: data["ability_info"]
  )

  data['class_origin_names'].each do |class_origin|
    create(:champion_origin_class_type,
      champion_id: champ.id,
      origin_class_type_id: OriginClassType.find_by(name: class_origin).id
    )
  end
end

# "RAW_ITEMS"
raw_item_data.each do |raw_item_data|
  create(:raw_item,
    name: raw_item_data["name"],
    thumbnail: raw_item_data["thumbnail"],
    stat_boost: raw_item_data["stat_boost"]
  )
end

recipe_data.each do |recipe_data|
  recipe = create(:recipe,
    name: recipe_data["name"],
    description: recipe_data["description"],
    thumbnail: recipe_data["thumbnail"]
  )
  create(:recipe_raw_item,
    recipe_id: recipe.id,
    raw_item_id: RawItem.find_by(name: recipe_data['item_1']).id
  )
  create(:recipe_raw_item,
    recipe_id: recipe.id,
    raw_item_id: RawItem.find_by(name: recipe_data['item_2']).id
  )
end
