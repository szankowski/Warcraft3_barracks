require_relative 'spec_helper'

describe Unit do

  before :each do
    @footman = Footman.new
    @dead_unit = Unit.new(0, 0)
  end

  describe "#dead?" do
    it "check if a unit is alive " do
    expect(@footman.dead?).to eq(false)
   end
  end
 
  describe "#attack if dead?" do
   it "should not attack if dead" do
     expect { @dead_unit.attack!(@footman) }.to raise_error DeadError, "Attacker is dead!"
   end

   it "should not attack dead unit" do
     expect { @footman.attack!(@dead_unit) }.to raise_error DeadError, "Victim is dead!"
   end
 end
    
  end