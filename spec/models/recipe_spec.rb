require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it {should have_many :recipe_items}
  it {should have_many(:items).through :recipe_items}
end
