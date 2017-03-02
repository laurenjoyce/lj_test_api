require "lj_test_api/version"
require "unirest"

module LjTestApi
  class Employee
    def self.all
      bulk_data = Unirest.get("https://data.cityofchicago.org/resource/tt4n-kn4t.json").body
      bulk_data
  end
end
