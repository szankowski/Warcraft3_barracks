require_relative 'spec_helper'

describe Footman do

  before :each do
    @footman = Footman.new
    @barrack = Barracks.new
  end

  describe "#attack" do
    it "should reduce the barracks's health_points by the attack_power specified, divided by 2 " do
      @footman.attack!(@barrack)
      expect(@barrack.health_points).to eq(495) # starts at 500
  end
  
  end

end
