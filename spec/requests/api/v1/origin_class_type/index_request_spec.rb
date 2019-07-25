require 'rails_helper'

describe 'Origin Class Type API' do
  it 'sends a list of origin_class_type json' do
    create_list(:origin_class_type, 7)

    get '/api/v1/origin_class_type'

    expect(response).to be_successful

    origin_class_type = JSON.parse(response.body)

    expect(origin_class_type['data'].count).to eq(7)
  end

  it 'in the lis aof JSON object i see each objects attributes' do
    list = create_list(:origin_class_type, 7)

    get '/api/v1/origin_class_type'

    expect(response).to be_successful

    origin_class_type_attributes = JSON.parse(response.body)['data'][0]['attributes']

    expect(origin_class_type_attributes['name']).to eq(list[0].name)
    expect(origin_class_type_attributes['thumbnail']).to eq(list[0].thumbnail)
    expect(origin_class_type_attributes['summary']).to eq(list[0].summary)
    expect(origin_class_type_attributes['tier_info']).to eq(list[0].tier_info)
    expect(origin_class_type_attributes['tiers']).to eq(list[0].tiers)
  end
end
