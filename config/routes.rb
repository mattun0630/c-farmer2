Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :producers, controllers: {
    sessions:      'producers/sessions',
    registrations: 'producers/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    registrations: 'users/registrations'
  }
    resources :users
  namespace :producers do
   resources :products
   resources :maps
  end
  resources :producers do
    resource :follows, only: [:create, :destroy]
  end
  resources :products
  resources :posts do
    resource :favorites, only: [:create, :destroy]
    resource :replies, only: [:create, :destroy, :index]
  end
  namespace :users do
    resources :posts
  end
  root 'products#index'
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面
  get 'tags/:tag', to: 'producers/products#index', as: :tag
  get 'producers/products/search', to: 'producers/products#search'
  post 'producers/products/search', to: 'producers/products#search'
  get 'products/search', to: 'products#search'
  post 'products/search', to: 'products#search'
  get 'follows/create'
  get 'follows/destroy'
end
