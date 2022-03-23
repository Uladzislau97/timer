Rails.application.routes.draw do
  resources :timers, only: [:create, :show]
end
