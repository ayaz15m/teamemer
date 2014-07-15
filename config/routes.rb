Rails.application.routes.draw do
  get 'meme/index'

  devise_for :users
  root to: "meme#index"
end
