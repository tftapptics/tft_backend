class ChampionOriginClassType < ApplicationRecord
  belongs_to :champion
  belongs_to :origin
  belongs_to :class_type
end
