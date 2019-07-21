class RawItemsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,
             :name,
             :thumbnail,
             :stat_boost
end
