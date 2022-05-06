Rails.application.routes.draw do

  get "about", to: "pages#about"
  get "support", to: "pages#support"
  get "contact", to: "pages#contact"
  

  get "articles", to: "articles#index"

  get "articles/:id", to: "articles#show"




end
