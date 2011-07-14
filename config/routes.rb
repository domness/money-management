MoneyManagement::Application.routes.draw do
  
  match '/users/login' => 'users#login'
  match '/users/logout' => 'users#logout'
  match '/users/welcome' => 'users#welcome'

  resources :bills
  resources :users do
    post :login
  end
    
  get "admin/index"

  root :to => "users#welcome"
end
