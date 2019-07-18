require 'rails_helper'

RSpec.describe RawItem, type: :model do
  describe "Relationships" do
    it {should have_many :recipe_raw_items}
    it {should have_many(:recipes).through :recipe_raw_items}
  end
end
