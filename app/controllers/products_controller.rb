class ProductsController < ApplicationController

  def all_products
    @products = []
    render "main"
  end

  def au_products
    @products = []
    render "main"
  end

  def nz_products
    @products = []
    render "main"
  end
end
