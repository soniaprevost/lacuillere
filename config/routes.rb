Rails.application.routes.draw do
  # root to: 'restaurants'

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end

end
