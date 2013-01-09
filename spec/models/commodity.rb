require 'spec_helper'

describe Commodity do
  it "can be instantiated" do
    binding.pry
    Commodity.new.should be_an_instance_of(Commodity)
  end

  it "can be saved successfully" do
    Commodity.create.should be_persisted
  end
end
