require 'spec_helper'

SAMPLE_COMMODITIES = ['pig', 'goat', 'toad', 'frog', 'dog', 'sheep', 'cow', 'turtle']

describe Commodity do
	def create_random_commodity
		commodity_name = SAMPLE_COMMODITIES.sample
		commodity = Commodity.new
		commodity.name = commodity_name
		commodity.save
		[commodity, commodity_name]
	end

	it "should allow adding commodities" do
		Commodity.count.should eq 0
		commodity, commodity_name = create_random_commodity
		Commodity.count.should eq 1

		found_commodity = Commodity.first
		found_commodity.name.should eq commodity_name
	end

	it "should allow deleting commodities" do
		Commodity.count.should eq 0
		commodity, commodity_name = create_random_commodity
		Commodity.count.should eq 1
		Commodity.first.delete
		Commodity.count.should eq 0
	end

	it "should allow the lookup of commodities by name" do
		all_commodities = (0..5).map { create_random_commodity}
		commodity, commodity_name = all_commodities.sample

		found_commodity = Commodity.where(name: commodity_name).first
		found_commodity.id.should eq commodity.id
	end

	it "should allow the lookup of commodities by id" do
		all_commodities = (0..5).map { create_random_commodity}
		commodity, commodity_name = all_commodities.sample

		found_commodity = Commodity.where(id: commodity.id).first
		found_commodity.name.should eq commodity.name
	end
end
