require_relative 'spec_helper'

# Resources allow you to create units. In our case (for simplicity), these resources will be stored directly within the barracks

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  it "starts off with 400 Attack Power" do
    expect(@siege_engine.health_points).to eq(400)
  end

  it "starts off with 400 Attack Power" do
    expect(@siege_engine.attack_power).to eq(50)
  end

end
