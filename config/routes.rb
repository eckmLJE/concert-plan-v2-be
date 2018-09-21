Rails.application.routes.draw do
  resources :plans
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
end