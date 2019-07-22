
require 'rails_helper'

describe 'Recipes API' do
  it 'sends a list of recipes json' do
    recipes = create_list(:recipe, 2)
    raw_items = create_list(:raw_item, 4)
    create(:recipe_raw_item, recipe_id: recipes[0].id, raw_item_id: raw_items[0].id)
    create(:recipe_raw_item, recipe_id: recipes[0].id, raw_item_id: raw_items[1].id)
    create(:recipe_raw_item, recipe_id: recipes[1].id, raw_item_id: raw_items[2].id)
    create(:recipe_raw_item, recipe_id: recipes[1].id, raw_item_id: raw_items[3].id)

    get '/api/v1/recipes'

    expect(response).to be_successful

    recipes = JSON.parse(response.body)

    expect(recipes['data'].count).to eq(2)
    expect(recipes['data'][0]['attributes']['raw_items'].count).to eq(2)
  end

  it 'in the lis aof JSON object i see each objects attributes' do
    recipes = create_list(:recipe, 2)
    raw_items = create_list(:raw_item, 4)
    create(:recipe_raw_item, recipe_id: recipes[0].id, raw_item_id: raw_items[0].id)
    create(:recipe_raw_item, recipe_id: recipes[0].id, raw_item_id: raw_items[1].id)
    create(:recipe_raw_item, recipe_id: recipes[1].id, raw_item_id: raw_items[2].id)
    create(:recipe_raw_item, recipe_id: recipes[1].id, raw_item_id: raw_items[3].id)

    get '/api/v1/recipes'

    expect(response).to be_successful

    recipe_attributes = JSON.parse(response.body)['data'][0]['attributes']

    expect(recipe_attributes['id']).to eq(recipes[0].id)
    expect(recipe_attributes['name']).to eq(recipes[0].name)
    expect(recipe_attributes['description']).to eq(recipes[0].description)
    expect(recipe_attributes['thumbnail']).to eq(recipes[0].thumbnail)
    expect(recipe_attributes['raw_items'][0]['id']).to eq(raw_items[0].id)
    expect(recipe_attributes['raw_items'][0]['name']).to eq(raw_items[0].name)
    expect(recipe_attributes['raw_items'][0]['thumbnail']).to eq(raw_items[0].thumbnail)
    expect(recipe_attributes['raw_items'][0]['stat_boost']).to eq(raw_items[0].stat_boost)
  end
end
