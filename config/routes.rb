Rails.application.routes.draw do
  root 'products#all_products'
  get 'au-products' => 'products#au_products'
  get 'nz-products' => 'products#nz_products'

end
