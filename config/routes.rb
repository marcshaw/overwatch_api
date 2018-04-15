Rails.application.routes.draw do
  resources :abilities

  resources :heros do
    get :abilities
  end
end
