FactoryBot.define do
  factory :origin_class_type, class: OriginClassType do
    sequence(:name) {|n| "Name #{n}" }
    sequence(:thumbnail) {"https://img.rankedboost.com/wp-content/plugins/league/assets/tft/Assassin.png"}
    sequence(:summary) { "some info" }
    sequence(:tier_info) { ["1 slkdfjlsa", "2 asjdklasjdl"] }
    sequence(:tiers) { [1,2] }
  end
end
