# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      post "charge", to: "transactions#charge"
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
