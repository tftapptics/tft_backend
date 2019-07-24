require 'rails_helper'

describe 'Champions API' do
  it 'sends a list of champions json' do
    create_list(:champion, 5)

    get '/api/v1/champions'

    expect(response).to be_successful

    champions = JSON.parse(response.body)

    expect(champions['data'].count).to eq(5)
  end

  it 'in the list of JSON objects i see each objects attributes' do
    list = create_list(:champion, 5)

    get '/api/v1/champions'

    expect(response).to be_successful

    champion_attributes = JSON.parse(response.body)['data'][0]['attributes']

    expect(champion_attributes['id']).to eq(list[0].id)
    expect(champion_attributes['name']).to eq(list[0].name)
    expect(champion_attributes['champion_thumbnail']).to eq(list[0].champion_thumbnail)
    expect(champion_attributes['cost']).to eq(list[0].cost)
    expect(champion_attributes['health']).to eq(list[0].health)
    expect(champion_attributes['dmg']).to eq(list[0].dmg)
    expect(champion_attributes['armor']).to eq(list[0].armor)
    expect(champion_attributes['mr']).to eq(list[0].mr)
    expect(champion_attributes['atk_spd']).to eq(list[0].atk_spd)
    expect(champion_attributes['range']).to eq(list[0].range)
    expect(champion_attributes['ability_thumbnail']).to eq(list[0].ability_thumbnail)
    expect(champion_attributes['ability_name']).to eq(list[0].ability_name)
    expect(champion_attributes['ability_info']).to eq(list[0].ability_info)
    expect(champion_attributes['model_img']).to eq(list[0].model_img)
  end
end
