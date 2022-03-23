# frozen_string_literal: true

Rails.application.routes.draw do
  resources :timers, only: %i[create show]
end
