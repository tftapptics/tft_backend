class Recipe < ApplicationRecord
  has_many :recipe_items
  has_many :raw_items, through: :recipe_items
end
