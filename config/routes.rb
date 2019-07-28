Rails.application.routes.draw do
  root 'product#index'
post '/', to: 'product#add_to_cart'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
