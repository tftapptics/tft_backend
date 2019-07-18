FactoryBot.define do
  factory :recipe_raw_item, class: RecipeRawItem do
    sequence(:recipe_id) {1}
    sequence(:raw_item_id) {1}
  end
end
