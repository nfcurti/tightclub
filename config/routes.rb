Rails.application.routes.draw do
  post 'orders'=>'orders#create'
  post 'orders'=>'orders#destroy'
  get 'shop'=>'shop#index'
  get 'contact'=>'contact#index'
  get 'faq'=>'faq#index'
  get 'tightclub'=>'tightclub#index'
  get 'home/index'
  devise_for :users, controllers: { confirmations: 'confirmations' }


  root :to => "home#index"
end
