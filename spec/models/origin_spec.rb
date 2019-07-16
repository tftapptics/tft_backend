require 'rails_helper'

RSpec.describe Origin, type: :model do
  it {should have_many :champion_origin_class_types}
  it {should have_many(:champions).through :champion_origin_class_types}
end
