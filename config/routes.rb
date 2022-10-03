Rails.application.routes.draw do
  resources :polls, except: %i[show new] do
    resources :options, only: %i[create update destroy]
    resource :respond, only: %i[show create]
    resource :visualization, only: %i[show]
  end

  root "polls#index"
end
