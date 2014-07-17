Rails.application.routes.draw do
  get 'meme/index'

  devise_for :users
  root to: "meme#index"

  get "/new" => "meme#new", as: :new_message
  post "/create" => "meme#create", as: :memes

  # get "meme" => "meme#index", as: :search
  post '/' => "meme#index"

  get "/display" => "meme#display", as: :display
end
