require_relative '../models/services/product_catalog_api'
class ProductsController < ApplicationController

  @@service = ProductCatalogApi.new()

  def all_products
    @products = @@service.make_request
    render 'main'
  end

  def au_products
    @products = @@service.make_request('?region=AU')
    render 'main'
  end

  def nz_products
    @products = @@service.make_request('?region=NZ')
    render 'main'
  end
end
