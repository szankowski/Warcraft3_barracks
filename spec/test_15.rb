require_relative 'spec_helper'

# Resources allow you to create units. In our case (for simplicity), these resources will be stored directly within the barracks

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
    @barrack = Barracks.new
  end
  describe "#SiegeEngine" do
    it "starts off with 400 Attack Power" do
      expect(@siege_engine.health_points).to eq(400)
    end

    it "starts off with 400 Attack Power" do
      expect(@siege_engine.attack_power).to eq(50)
    end

    it "should reduce the barracks's health_points by the attack_power specified, times 2 " do
      @siege_engine.attack!(@barrack)
      expect(@barrack.health_points).to eq(400) # starts at 800
    end

    it "should be able attack other SiegeEngine " do
      @siege_engine2 = SiegeEngine.new
      @siege_engine.attack!(@siege_engine2)
      expect(@siege_engine2.health_points).to eq(350) # starts at 800
    end

    it "should not attack other units (unless its)" do
       @footman = Footman.new
       @siege_engine.attack!(@footman)
       expect(@footman.health_points).to eq(60) # starts at 800
    end

  end

end
