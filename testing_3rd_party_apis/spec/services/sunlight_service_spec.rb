require 'rails_helper'
describe SunlightService do
  context "#legislators"
  it "returns legislators" do
    VCR.use_cassette("sunlight_service#legislators") do
      service = SunlightService.new
      legislators = service.legislators(gender: "F")
      legislator = legislators.first
      expect(legislator[:first_name]).to eq("Joni")
      expect(legislator[:gender]).to eq("F")
      expect(legislators.count).to eq(20)
    end
  end
end
