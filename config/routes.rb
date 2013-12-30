Blogme::Application.routes.draw do
  devise_for :users

  resources :comments


  resources :weibos do
    member do
      get 'favorite'
    end
  end

  resources :users

  root :to => 'weibos#index'

end
