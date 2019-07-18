class Recipe < ApplicationRecord
  has_many :recipe_raw_items
  has_many :raw_items, through: :recipe_raw_items
end
