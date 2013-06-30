require 'httparty'
require 'time-lord'

class Datagrepper
  class CustomHTTParty
    include HTTParty
    disable_rails_query_string_format
  end

  def initialize(url='https://apps.fedoraproject.org/datagrepper/raw/')
    @url = url
  end

  def query(data)
    result = CustomHTTParty.get(
      @url,
      :query => data)
    result
  end
end
