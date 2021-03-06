require 'rails_helper'

RSpec.describe Champion, type: :model do
  describe "Relationships" do
    it {should have_many :champion_origin_class_types}
    it {should have_many(:origin_class_types).through :champion_origin_class_types}
  end
end
