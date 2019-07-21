require 'rails_helper'

describe 'Raw Items API' do
  it 'sends a list of raw_items json' do
    create_list(:raw_item, 7)

    get '/api/v1/raw_items'

    expect(response).to be_successful

    raw_items = JSON.parse(response.body)

    expect(raw_items['data'].count).to eq(7)
  end

  it 'in the lis aof JSON object i see each objects attributes' do
    list = create_list(:raw_item, 7)

    get '/api/v1/raw_items'

    expect(response).to be_successful

    raw_item_attributes = JSON.parse(response.body)['data'][0]['attributes']

    expect(raw_item_attributes['id']).to eq(list[0].id)
    expect(raw_item_attributes['name']).to eq(list[0].name)
    expect(raw_item_attributes['thumbnail']).to eq(list[0].thumbnail)
    expect(raw_item_attributes['stat_boost']).to eq(list[0].stat_boost)
  end
end
