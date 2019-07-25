require 'rails_helper'

describe 'Raw Items API' do\
  it 'returns a single champion' do
    champ = create(:champion)
    champ1 = create(:champion)

    get "/api/v1/champions/#{champ.id}"

    expect(response).to be_successful

    champion_attributes = JSON.parse(response.body)['data']['attributes']

    expect(champion_attributes['id']).to eq(champ.id)
    expect(champion_attributes['name']).to eq(champ.name)
    expect(champion_attributes['champion_thumbnail']).to eq(champ.champion_thumbnail)
    expect(champion_attributes['cost']).to eq(champ.cost)
    expect(champion_attributes['health']).to eq(champ.health)
    expect(champion_attributes['dmg']).to eq(champ.dmg)
    expect(champion_attributes['armor']).to eq(champ.armor)
    expect(champion_attributes['mr']).to eq(champ.mr)
    expect(champion_attributes['atk_spd']).to eq(champ.atk_spd)
    expect(champion_attributes['range']).to eq(champ.range)
    expect(champion_attributes['ability_thumbnail']).to eq(champ.ability_thumbnail)
    expect(champion_attributes['ability_name']).to eq(champ.ability_name)
    expect(champion_attributes['ability_info']).to eq(champ.ability_info)
    expect(champion_attributes['model_img']).to eq(champ.model_img)
  end
end
