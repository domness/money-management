MoneyManagement::Application.routes.draw do
  resources :bills

  get "user/login"
  post "user/login"
  get "user/logout"
  get "user/welcome"
  get "admin/index"

  root :to => "logins#index"
end
