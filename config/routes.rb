Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :plans
      post 'user_token' => 'user_token#create'
      get '/user', to: 'users#show_user'
    end
  end
end