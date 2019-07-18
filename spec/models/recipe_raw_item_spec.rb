require 'rails_helper'

RSpec.describe RecipeRawItem, type: :model do
  describe "Relationships" do
    it {should belong_to(:recipe)}
    it {should belong_to(:raw_item)}
  end
end
