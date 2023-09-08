Rails.application.routes.draw do
  root "home#index"

  devise_for :users, controllers: {
    # confirmations: "users/confirmations",
    # passwords: "users/passwords",
    registrations: "users/registrations",
    sessions: "users/sessions",
    # unlocks: "users/unlocks"
    omniauth_callbacks: "users/omniauth_callbacks"
  }
end
