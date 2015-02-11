Rails.application.routes.draw do
  # root to: 'restaurants'

  resources :restaurants, only: [:index, :new, :create, :show]

end
