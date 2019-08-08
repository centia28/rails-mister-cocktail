Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  resources :cocktails, only: [:index, :show, :new, :create] do
    member do
      resources :doses, only: [:new, :create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
