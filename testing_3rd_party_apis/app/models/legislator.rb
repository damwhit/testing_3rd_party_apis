class Legislator < OpenStruct
  def self.find_by(params)
    service = SunlightService.new
    service.legislators(params).map { |raw_legislator|
      Legislator.new(raw_legislator)
    }
  end
end
