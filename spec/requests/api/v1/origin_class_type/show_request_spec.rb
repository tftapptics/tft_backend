require 'rails_helper'

describe 'Origin Class Type API' do\
  it 'returns one origin_class_type object' do
    origin_class_type = create(:origin_class_type)
    origin_class_type1 = create(:origin_class_type)

    get "/api/v1/origin_class_type/#{origin_class_type.id}"

    expect(response).to be_successful

    origin_class_type_attributes = JSON.parse(response.body)['data']['attributes']

    expect(origin_class_type_attributes['name']).to eq(origin_class_type.name)
    expect(origin_class_type_attributes['thumbnail']).to eq(origin_class_type.thumbnail)
    expect(origin_class_type_attributes['summary']).to eq(origin_class_type.summary)
    expect(origin_class_type_attributes['tier_info']).to eq(origin_class_type.tier_info)
    expect(origin_class_type_attributes['tiers']).to eq(origin_class_type.tiers)
  end
end
