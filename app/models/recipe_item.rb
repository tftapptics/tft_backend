class RecipeItem < ApplicationRecord
  belongs_to :recipe
  belongs_to :raw_item
end
