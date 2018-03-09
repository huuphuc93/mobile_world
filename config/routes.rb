Rails.application.routes.draw do

  get 'orders/index'

  get 'carts/index'

  get 'order_details/create'

  get 'order_details/update'

  get 'order_details/destroy'

  scope "(:locale)", locale: /en|vi/ do
    post "/rate" => "rater#create", :as => "rate"
    root to: "pages#index"
    resources :mobiles
    resources :makers
    resources :carts
    resources :order_details
  end
  
  devise_for :users, controllers: { omniauth_callbacks: "user/omniauth_callbacks" }
end
