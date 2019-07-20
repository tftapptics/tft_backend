class ChampionsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,
             :name,
             :champion_thumbnail,
             :cost,
             :health,
             :dmg,
             :armor,
             :mr,
             :atk_spd,
             :range,
             :ability_thumbnail,
             :ability_info,
             :model_img,
             :origin_class_types
end
