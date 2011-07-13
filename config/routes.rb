MoneyManagement::Application.routes.draw do

  resources :logins

  resources :login
  root :to => "login#index"
end
