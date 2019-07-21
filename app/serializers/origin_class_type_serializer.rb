class OriginClassTypeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name,
             :thumbnail,
             :summary,
             :tier_info,
             :tiers
end
