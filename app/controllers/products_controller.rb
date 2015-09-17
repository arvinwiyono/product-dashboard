require 'rest-client'
require 'json'

class ProductsController < ApplicationController


  @@base_url = 'http://localhost:3000/products'


  def all_products
    @products = make_request
    render 'main'
  end

  def au_products
    @products = make_request('?region=AU')
    render 'main'
  end

  def nz_products
    @products = make_request('?region=NZ')
    render 'main'
  end

  private
  def make_request(param = '')
    url = @@base_url + param
    response = JSON.parse(RestClient.get url)
    response['products']
  end
end
