Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "pets", to: "pets#index"
  get "pets/new", to: "pets#new"
  post "pets", to: "pets#create"
  get "pets/:id", to: "pets#show", as: :pet
  get "pets/:id/edit", to: "pets#edit", as: :edit_pet
  patch "pets/:id", to: "pets#update"
  delete "pets/:id", to: "pets#destroy"
end
