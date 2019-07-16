require 'rails_helper'

RSpec.describe RecipeItem, type: :model do
  describe "Relationships" do
    it {should belong_to(:recipe)}
    it {should belong_to(:item)}
  end
end
