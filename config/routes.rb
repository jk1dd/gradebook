Rails.application.routes.draw do
  resources :teachers do
    resources :courses
  end
end
