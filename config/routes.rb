Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments
      resources :users
      resources :plans
      post 'user_token' => 'user_token#create'
      post '/plans/:id' => 'plans#update'
      post '/plans/remove_user/:id' => 'plans#remove_user'
      get '/user', to: 'users#show_user'
      get '/ping', to: 'plans#ping'
    end
  end
end