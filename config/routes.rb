MoneyManagement::Application.routes.draw do
  
  resources :bills
  resources :user_bills

  match '/users/login' => 'users#login'
  match '/users/logout' => 'users#logout'
  match '/users/welcome' => 'users#welcome'

  resources :users do
    get :login
    post :login
  end
    
  get "admin/index"

  root :to => "users#welcome"
end
