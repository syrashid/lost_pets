Rails.application.routes.draw do
  # This is for my index
  get "pets", to: "pets#index"

  get "pets/new", to: "pets#new"
  post "pets", to: "pets#create"

  get "pets/:id", to: "pets#show", as: :pet

  get "pets/:id/edit", to: "pets#edit", as: :edit_pet

end
