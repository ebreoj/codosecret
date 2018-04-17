Rails.application.routes.draw do
  root "users#index"

  resources :players
  resources :user, only: [:index, :create]
  # get "players" => "players#index"
  # get "players/new" => "players#new"
  # post "players" => "players#create"
  # get "players/:id" => "players#show", as: "player"
  # get "players/:id/edit" => "players#edit", as: "player_edit"
  # patch "players/:id" => "players#update"
  # delete "players/:id" => "players#destroy"
end
