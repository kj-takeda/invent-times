Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
   # ログアウト
   devise_scope :social_account do
    get 'sign_out', to: "sessions#destroy"
  end

  root to: 'periods#new'
  resources :users
  resources :targets do
    collection do
      get 'search'
    end
  end

  resources :howtos
  resources :periods
end
