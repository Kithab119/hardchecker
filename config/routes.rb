Rails.application.routes.draw do

  devise_for :users, skip: [:confirmations, :omniauth, :passwords, :unlocks], controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope module: :user do
    root "users/sessions#new"
  end

  resources :memos

end
