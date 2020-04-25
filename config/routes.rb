Rails.application.routes.draw do
  # For display all pets user story
  root to: "pets#index"

  # For my creating a new pet user story
  get "pets/new", to: "pets#new"
  post "pets", to: "pets#create"

  # For displaying info on a singular pet story
  get "pets/:id", to: "pets#show", as: :pet

  # For editing and updating a pet
  get "pets/:id/edit", to: "pets#edit", as: :edit_pet
  patch "pets/:id", to: "pets#update"

  # For removing a pet from the site
  delete "pets/:id", to: "pets#destroy"
end
