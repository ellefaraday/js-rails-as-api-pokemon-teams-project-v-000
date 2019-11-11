Rails.application.routes.draw do
  resources :pokemons
  resources :trainers, only: [:index] do
    resources :pokemons, only: [:create, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
