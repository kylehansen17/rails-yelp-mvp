Rails.application.routes.draw do
  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:new, :create]
  end

end
