class RecipesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,
             :name,
             :description,
             :thumbnail,
             :raw_items
end
