Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :notes

  #if user is signed_in / can't have two roots in rails so called it a different name (you can have marketing view and then the dashboard)
  authenticated :user do 
    root 'notes#index', as: "authenticated_root"
  end

  root "welcome#index"


end
