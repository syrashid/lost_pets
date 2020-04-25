Rails.application.routes.draw do
  # This is for my index
  get "pets", to: "pets#index"

  get "pets/:id", to: "pets#show", as: :pet
end
