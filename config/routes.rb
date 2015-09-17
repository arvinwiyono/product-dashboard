Rails.application.routes.draw do
  root 'products#all_products'
  get 'au_products' => 'products#au_products'
  get 'nz_products' => 'products#nz_products'

end
