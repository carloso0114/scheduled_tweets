Rails.application.routes.draw do
  root to: "main#index"
  get "about-us", to: "about#index", as: :about
end

