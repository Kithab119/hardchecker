Rails.application.routes.draw do

  devise_for :users, skip: [:confirmations, :omniauth, :passwords, :unlocks], controllers: {
    registrations: "user/registrations",
    sessions: "user/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :memo
end
