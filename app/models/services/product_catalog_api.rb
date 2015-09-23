require 'rest-client'
require 'json'

class ProductCatalogApi

  def initialize
    @base_url = 'http://localhost:3000/products?region='
  end

  def make_request(param = '')
    url = @base_url + param
    response = JSON.parse(RestClient.get url)
    response['products']
  end

end