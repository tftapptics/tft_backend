FactoryBot.define do
  factory :raw_item, class: RawItem do
    sequence(:name) {|n| "Name #{n}" }
    sequence(:thumbnail) {"https://raw.communitydragon.org/latest/game/assets/maps/particles/tft/icon_bfsword.tft.png"}
    sequence(:stat_boost) { "+20 Attack Damage" }
  end
end
