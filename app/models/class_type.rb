class ClassType < ApplicationRecord
  has_many :champion_origin_class_types
  has_many :champions, through: :champion_origin_class_types
end
