Rails.application.routes.draw do
  resources :tacos, defaults: { format: :json }
  resources :toppings, defaults: { format: :json }
end
