require 'rails_helper'

describe 'Raw Items API' do\
  it 'returns one raw_item object' do
    raw_item = create(:raw_item)
    raw_item1 = create(:raw_item)

    get "/api/v1/raw_items/#{raw_item.id}"

    expect(response).to be_successful

    raw_item_attributes = JSON.parse(response.body)['data']['attributes']

    expect(raw_item_attributes['id']).to eq(raw_item.id)
    expect(raw_item_attributes['name']).to eq(raw_item.name)
    expect(raw_item_attributes['thumbnail']).to eq(raw_item.thumbnail)
    expect(raw_item_attributes['stat_boost']).to eq(raw_item.stat_boost)
  end
end
