FactoryBot.define do
  factory :recipe, class: Recipe do
    sequence(:name) {|n| "Rabadon's Deathcap #{n}" }
    sequence(:item_1) { "Needlessly Large Rod" }
    sequence(:item_2) { "Needlessly Large Rod" }
    sequence(:description) { "Wearer's Spell Power stat is amplified by 50.0%" }
    sequence(:thumbnail) {"cdn.leagueofgraphs.com/img/tft/items/33.png"}
  end
end
