Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    collection do
      get 'search'
    end
    resources :doses, only: [:create]
  end
  resources :doses, only: :destroy
end
