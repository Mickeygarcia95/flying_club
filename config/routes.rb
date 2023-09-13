Rails.application.routes.draw do
  devise_for :usuarios
  resources :operaciones_aereas
  resources :pilotos
  resources :usuarios
  resources :aeronaves
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "operaciones_aereas#new"
end
