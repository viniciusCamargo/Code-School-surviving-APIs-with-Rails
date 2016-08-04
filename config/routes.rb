Rails.application.routes.draw do
  # resources :zombies
  # resources :zombies, only: :index
  resources :zombies, only: [:index, :show]
  resources :humans, except: [:destroy, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
