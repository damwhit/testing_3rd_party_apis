class SunlightService
  def initialize
    @_connection = Faraday.new(url: "http://congress.api.sunlightfoundation.com")
    connection.params["apikey"] = "200390233fd64ae1a1bb4032039af6d9"
  end

  def legislators(params)
    parse(connection.get("/legislators", params))[:results]
  end

  private

    def connection
      @_connection
    end

    def parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end
end
