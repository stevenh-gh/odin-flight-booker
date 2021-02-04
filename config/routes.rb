Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flights
  root 'flights#index'
  get 'rails/info/routes' => 'routes'
end
