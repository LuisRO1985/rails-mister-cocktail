Rails.application.routes.draw do

  get 'doses/new'

  get 'doses/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :cocktails do
      resources :doses, only: [ :new, :create ]
  end



  root to: "cocktails#index"
end
