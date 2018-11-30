Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/carts_update' => 'custom_webhooks#carts_update'

  post '/carts_create' => 'custom_webhooks#carts_create'
end
