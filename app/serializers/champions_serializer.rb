class ChampionsSerializer
  include FastJsonapi::ObjectSerializer

  attribute :data do |object|
    object.attributes.symbolize_keys
  end


  attribute :origin_class_type do |object|
    OriginClassTypeSerializer.new(object.origin_class_types)
    end




end
