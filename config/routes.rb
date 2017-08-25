Rails.application.routes.draw do
  root 'home#index'

  get '/information', to: 'information#index'

  resources :teachers, only: [:index, :show] do
    resources :courses
  end

  resources :students do
    resources :courses, only: [:index, :show]
  end
end
