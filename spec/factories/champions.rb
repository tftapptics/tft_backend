FactoryBot.define do
  factory :champion, class: Champion do
    sequence(:name) {|n| "Name #{n}" }
    sequence(:champion_thumbnail) {"https://ddragon.leagueoflegends.com/cdn/9.13.1/img/champion/Yasuo.png" }
    sequence(:cost) {|n| "cost #{n}" }
    sequence(:health) { [212,1232,4323] }
    sequence(:dmg) {|n| "dmg #{n}" }
    sequence(:armor) {|n| "armor #{n}" }
    sequence(:mr) {|n| "mr #{n}"}
    sequence(:atk_spd) {|n| "atk_spd #{n}"}
    sequence(:range) {|n| "range #{n}"}
    sequence(:ability_thumbnail) {"https://raw.communitydragon.org/latest/game/assets/characters/yasuo/hud/icons2d/yasuo_q1.png"}
    sequence(:ability_info) {['as','asd','asdsdwe']}
  end
end
