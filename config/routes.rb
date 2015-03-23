Rails.application.routes.draw do
  root :to => "questions#index"

  resources :questions, :except => [:edit, :update, :destroy]
end
