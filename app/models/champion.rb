class Champion < ApplicationRecord
  has_many :champion_origin_class_types
  has_many :origins, through: :champion_origin_class_types
  has_many :class_types, through: :champion_origin_class_types
end
