require 'rails_helper'

RSpec.describe ChampionOriginClassType, type: :model do
  describe "Relationships" do
    it {should belong_to(:origin)}
    it {should belong_to(:class_type)}
    it {should belong_to(:champion)}
  end
end
