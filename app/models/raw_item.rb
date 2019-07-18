class RawItem < ApplicationRecord
  has_many :recipe_raw_items
  has_many :recipes, through: :recipe_raw_items
end
