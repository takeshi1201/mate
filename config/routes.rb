Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
 #deviseのコントローラのregistrationsを指定（会員登録遷移）隠しコントローラのため（カスタマイズ）
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update,] do
  	resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end
  get '/users/:id/edit_profile' => 'users#edit_profile', as: 'edit_profile'
  patch '/users/:id' => 'users#update_profile'
  resources :posts, only: [:new, :create, :show, :index] do
    collection do
      get 'search', as:"hashtag_search"
    end
  	resource :likes, only: [:create, :destroy]
  end

  get '/users/category/:id' => 'categories#show', as: 'category'

  resources :rooms ,only: [:create, :show, :index]
  resources :chat_messages ,only: [:create]
  resources :notifications, only: [:index]


  get 'abouts' => 'abouts#index'
  get 'tops' => 'tops#index'

end