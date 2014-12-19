Rails.application.routes.draw do
  namespace :api do
    resources :albums, :artists, :sites, :pages
  end
end
