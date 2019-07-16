require 'rails_helper'

RSpec.describe Item, type: :model do
  it {should have_many :recipe_items}
  it {should have_many(:recipes).through :recipe_items}
end
