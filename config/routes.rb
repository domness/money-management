MoneyManagement::Application.routes.draw do
  get "user/login"
  post "user/login"
  get "user/logout"
  get "user/welcome"

  root :to => "logins#index"
end
