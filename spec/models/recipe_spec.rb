require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe "Relationships" do
    it {should have_many :recipe_items}
    it {should have_many(:items).through :recipe_items}
  end
end
