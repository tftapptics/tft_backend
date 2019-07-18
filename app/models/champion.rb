class Champion < ApplicationRecord
  has_many :champion_origin_class_types
  has_many :origin_class_types, through: :champion_origin_class_types
end
