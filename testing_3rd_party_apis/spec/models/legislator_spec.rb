require 'rails_helper'

describe Legislator do
  context ".find_by()" do
    it "returns a collection of legislators" do
      VCR.use_cassette "legislator#find_by" do
        legislators = Legislator.find_by(gender: "F")
        legislator = legislators.first

        expect(legislators.count).to eq(20)
        expect(legislator.class).to eq(Legislator)
        expect(legislator.first_name).to eq("Joni")
        expect(legislator.gender).to eq("F")
      end
    end
  end
end
