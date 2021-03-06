Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # get 'users/new'
  get "/signup", to: "users#new"
  get "/help", to: "static_pages#help"
  # 这个规则会定义两个具名路由
  # help_path -> '/help'
  # help_url -> 'http://www.example.com/help'
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  root "static_pages#home"
  # users是一个资源 满足restful
  resources :users
end
