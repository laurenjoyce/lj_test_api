require 'lj_test_api/version'
require 'unirest'
require 'jbuilder'

module LjTestApi
  class ApiCall
    def self.url(api_endpoint)
      data = Unirest.get("#{api_endpoint}").body

      # json.array! data.each do |object|
      #   json.department object["department"]
      #   json.employee_annual_salary object["employee_annual_salary"]
      #   json.job_titles object["job_titles"]
      #   json.name object["name"]
      # end
      data.each do |object|
        return :json => object
      end
    end
# json.first_name employee.first_name
# json.last_name employee.last_name
# json.full_name employee.full_name
# json.birthdate employee.birthdate
# json.email employee.email
# json.ssn employee.ssn


# {"department"=>"POLICE", 
#   "employee_annual_salary"=>"129096.00",
#  "job_titles"=>"ASST GENERAL COUNSEL", 
#   "name"=>"BAZAREK, WILLIAM E"}



    # def self.department(parameter)
    #   bulk_data = Unirest.get("https://data.cityofchicago.org/resource/tt4n-kn4t.json?department=#{parameter.upcase}").body
    #   bulk_data
    # end
  end
end
