Rails.application.routes.draw do
  devise_for :users
  root :to => "questions#index"

  resources :questions, :except => [:edit, :update, :destroy] do
    resources :responses, :only => [:new, :create]
  end
end
