MoneyManagement::Application.routes.draw do
  
  resources :bills
  
  resources :user_bills do
    get :mark_as_paid
  end

  match '/users/login' => 'users#login'
  match '/users/logout' => 'users#logout'
  match '/users/welcome' => 'users#welcome'
  match '/user_bills/mark_as_paid' => 'user_bills#mark_as_paid'

  resources :users do
    get :login
    post :login
  end
    
  get "admin/index"

  root :to => "users#welcome"
end
