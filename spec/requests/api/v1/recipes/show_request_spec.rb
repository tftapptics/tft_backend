require 'rails_helper'

describe 'Recipes API' do\
  it 'returns one recipe object' do
    recipe = create(:recipe)
    raw_items = create_list(:raw_item, 2)
    create(:recipe_raw_item, recipe_id: recipe.id, raw_item_id: raw_items[0].id)
    create(:recipe_raw_item, recipe_id: recipe.id, raw_item_id: raw_items[1].id)

    get "/api/v1/recipes/#{recipe.id}"

    expect(response).to be_successful

    recipe_attributes = JSON.parse(response.body)['data']['attributes']

    expect(recipe_attributes['id']).to eq(recipe.id)
    expect(recipe_attributes['name']).to eq(recipe.name)
    expect(recipe_attributes['description']).to eq(recipe.description)
    expect(recipe_attributes['thumbnail']).to eq(recipe.thumbnail)
    expect(recipe_attributes['raw_items'][0]['id']).to eq(raw_items[0].id)
    expect(recipe_attributes['raw_items'][0]['name']).to eq(raw_items[0].name)
    expect(recipe_attributes['raw_items'][0]['thumbnail']).to eq(raw_items[0].thumbnail)
    expect(recipe_attributes['raw_items'][0]['stat_boost']).to eq(raw_items[0].stat_boost)
  end
end
