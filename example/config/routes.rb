Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  resources :products do
    get :who_bought,:on=>:member
  end
  
  resources :products
  get 'say/hello'
  get 'say/goodbye'
  root :to=>'store#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
