Rails.application.routes.draw do

  namespace :admins do
   resources :users, only: [:index, :show, :destroy]
   resources :posts , only: [:index , :destroy]
  end

  devise_for :admin_users, controllers: {
  sessions:      'admin_users/sessions',
  passwords:     'admin_users/passwords',
  registrations: 'admin_users/registrations'
}

devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

 #deviseのコントローラのregistrationsを指定（会員登録遷移）隠しコントローラのため（カスタマイズ）
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update,] do
  	resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end

  resources :posts, only: [:new, :create, :show, :index] do
    collection do
      get 'search', as:"hashtag_search"
    end
  	resource :likes, only: [:create, :destroy]
  end

  resources :contacts, only: [:new , :create]
  resources :rooms ,only: [:create, :show, :index]
  resources :chat_messages ,only: [:create]
  resources :notifications, only: [:index]

  get '/users/category/:id' => 'categories#show', as: 'category'
  get '/users/:id/edit_profile' => 'users#edit_profile', as: 'edit_profile'
  patch '/users/:id' => 'users#update_profile'

  get 'abouts' => 'abouts#index'
  get 'tops' => 'tops#index'

end