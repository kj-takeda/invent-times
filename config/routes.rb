Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
   # ログアウト
   devise_scope :social_account do
    get 'sign_out', to: "sessions#destroy"
  end

  root to: 'periods#new'
  resources :users,only:[:show]
  resources :targets,except:[:edit,:update] do
    collection do
      get 'category_search'
      get 'feature_search'
    end
    member do
      post "add" , to: "favorites#create"
      delete "add" , to: "favorites#destroy"
    end
    resources :howtos,only:[:create,:edit,:destroy,:update]
  end
  
  resources :periods,only:[:new,:create]
end
