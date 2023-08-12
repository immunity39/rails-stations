Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies, only: [:index, :show]

  namespace :admin do
    resources :movies do
      resources :schedules, only: [:new, :create]
    end

    resources :schedules, only: [:index, :show, :edit, :update, :destroy]
  end

  get '/sheets', to: 'sheets#index'
end
