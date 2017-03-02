require "lj_test_api/version"
require "unirest"

module LjTestApi
  class ApiCall
    def self.url(api_endpoint)
      data = Unirest.get("#{api_endpoint}").body
      data
      
    end

    # def self.department(parameter)
    #   bulk_data = Unirest.get("https://data.cityofchicago.org/resource/tt4n-kn4t.json?department=#{parameter.upcase}").body
    #   bulk_data
    # end
  end
end
