require 'httparty'

module PhoneNumberClient
  include HTTParty

  base_uri 'http://phonenumber.herokuapp.com'

  def self.phone_number number, country_code
    get('/', :query => { :number => number, :country_code => country_code }).parsed_response
  end
end
