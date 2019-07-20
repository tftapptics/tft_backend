require "pry"
require 'factory_bot'
include FactoryBot::Syntax::Methods
champion_data = JSON.parse(File.read('./scraped_data/test_scrape.json'))
class_type_data = JSON.parse(File.read('./scraped_data/classes_data.json'))
origin_data = JSON.parse(File.read('./scraped_data/origins_data.json'))
raw_item_data = JSON.parse(File.read('./scraped_data/raw_items_data.json'))
recipe_data = JSON.parse(File.read('./scraped_data/recipes_data.json'))


img = [["Aatrox", "https://i.imgur.com/EkVoOjj.png"],
["Ahri", "https://i.imgur.com/vugz67I.png"],
["Akali", "https://i.imgur.com/e08Gynb.png"],
["Anivia", "https://i.imgur.com/81ocwaM.png"],
["Ashe", "https://i.imgur.com/E9q1wk7.png"],
["Aurelion Sol", "https://i.imgur.com/OqlkVXr.png"],
["Blitz", "https://i.imgur.com/SddHg4u.png"],
["Brand", "https://i.imgur.com/5bpI8bh.png"],
["Braum", "https://i.imgur.com/chgAYzs.png"],
["Cho'Gath", "https://i.imgur.com/tp6nYOo.png"],
["Darius", "https://i.imgur.com/qVTdqPR.png"],
["Draven", "https://i.imgur.com/0keMK4n.png"],
["Elise", "https://i.imgur.com/It1LMFJ.png"],
["Evelynn", "https://i.imgur.com/sayiqfZ.png"],
["Fiora", "https://i.imgur.com/XoD5oA3.png"],
["GankPlank", "https://i.imgur.com/5DJAHcJ.png"],
["Garen", "nil.png"],
["Gnar", "https://i.imgur.com/IaBGjDg.png"],
["Graves", "https://i.imgur.com/JoNHrKD.png"],
["Karthus", "https://i.imgur.com/tivXVw1.png"],
["Kassadin", "https://i.imgur.com/BqLBdsA.png"],
["Katarina", "https://i.imgur.com/ltQ0HwN.png"],
["Kayle", "https://i.imgur.com/Of11lMx.png"],
["Kennen", "https://i.imgur.com/ljluNil.png"],
["Kha'Zix", "https://i.imgur.com/5lCtF5f.png"],
["Kindred", "https://i.imgur.com/QfEeMzI.png"],
["Leona", "https://i.imgur.com/lOXYrLN.png"],
["Lissandra", "https://i.imgur.com/yUEchLw.png"],
["Lucian", "https://i.imgur.com/ISktaLm.png"],
["Lulu", "https://i.imgur.com/sw037qz.png"],
["MissFortune", "https://i.imgur.com/9YG3Clp.png"],
["MordiKaiser", "https://i.imgur.com/DMOVd7b.png"],
["Morgana", "https://i.imgur.com/yYCVoWh.png"],
["Nidalee", "https://i.imgur.com/eBSAJN1.png"],
["Poppy", "https://i.imgur.com/g2eXt6q.png"],
["Pyke", "https://i.imgur.com/Ytctt3y.png"],
["Rek'Sai", "https://i.imgur.com/N3LGpkB.png"],
["Rengar", "https://i.imgur.com/alV8FCO.png"],
["Sejunai", "https://i.imgur.com/OdC7Spy.png"],
["Shen", "https://i.imgur.com/MTvNXB1.png"],
["Shyvanna", "https://i.imgur.com/7a61uD4.png"],
["Swain", "https://i.imgur.com/SNB9NHk.png"],
["Tristana", "https://i.imgur.com/c7azvHE.png"],
["Twisted,Fate", "https://i.imgur.com/28NHfZj.png"],
["Varus", "https://i.imgur.com/PZVgM5V.png"],
["Vayne", "https://i.imgur.com/jORoq8G.png"],
["Veigar", "https://i.imgur.com/uaC3oEe.png"],
["Volibear", "https://i.imgur.com/wDCb62d.png"],
["Warwick", "https://i.imgur.com/8o9wxEa.png"],
["Yasuo", "https://i.imgur.com/DBxile9.png"],
["Zed", "https://i.imgur.com/cC4VGTV.png"]]

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
count = 0
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
    ability_name: data["ability_name"],
    ability_info: data["ability_info"],
    model_img: img[count][1]
  )
  count += 1
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
