class OriginClassTypeSerializer
  include FastJsonapi::ObjectSerializer

  attribute :data do |object|
    object.attributes.symbolize_keys
  end



end
