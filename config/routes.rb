Rails.application.routes.draw do
  # For displaying all pets user story and having it routed to the home url
  root to: "pets#index"

  # For my creating a new pet user story, remember this is broken into two pieces
  get "pets/new", to: "pets#new", as: :new_pet
  post "pets", to: "pets#create"

  # For editing and updating a pet, remember this is proken into two pieces
  get "pets/:id/edit", to: "pets#edit", as: :edit_pet
  patch "pets/:id", to: "pets#update"

  # For displaying info on a singular pet story, remember this has to come after the edit route.  Why?
  # The colon in a url signifies that it has a variable value, in this case that variable value is :id.  The way routing works is it goes down the router line by line and compares the url given to all the different routes we've created.  If that route matches the url it sends it off to that controller action.  So with a variable like :id, what ends up happening if the show route comes before the edit, it will go down the line and do the show action, even when you want it to be the edit action
  get "pets/:id", to: "pets#show", as: :pet

  # For removing a pet from the site
  delete "pets/:id", to: "pets#destroy"
end
