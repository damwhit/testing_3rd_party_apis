class Legislator < OpenStruct
  attr_reader :first_name, :gender

  def initialize(attrs)
    @first_name = attrs[:first_name]
    @gender = attrs[:gender]
  end

  def self.find_by(params)
    service = SunlightService.new
    service.legislators(params).map { |raw_legislator|
      Legislator.new(raw_legislator)
    }
  end
end
