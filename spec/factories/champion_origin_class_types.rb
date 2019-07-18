FactoryBot.define do
  factory :champion_origin_class_type, class: ChampionOriginClassType do
    sequence(:champion_id) { 1 }
    sequence(:origin_class_type_id) { 1 }
  end
end
