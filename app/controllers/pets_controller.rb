class PetsController < ApplicationController
  # We use a before action for common actions that need to happen before controller actions.  These include show, edit, update, and destroy, where we need to know which pet we are performing that action on
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  # We've abstracted away all this code with our before action above, the method is a private method only accessible by our controller
  def show; end

  # We always need to pass a new instance of our model to the form, think of it as passing a canvas for the user to then provide attribute information for
  def new
    @pet = Pet.new
  end

  def create
    # What is this pet_params?  See the private method below 👇
    @pet = Pet.new(pet_params)
    # Here we separate new from save so that we can use the return of save to guide us on how we should direct the user
    # If the pet is valid and it can save, we'll be redirected to that pet's show page
    if @pet.save
      redirect_to pet_path(@pet)
      # If the pet was invalid, let's say we didn't provide a name, the form will be rerendered but the information will not be lost
    else
      render 'new'
    end
  end

  def edit; end

  def update
    # Same principle as the create method above, if the pet is valid and saves, we will be redirected to the show page, if not we will be seeing the form again with the information we filled out
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render 'edit'
    end
  end

  # After we destroy the pet, where does it make sense for us to be redirected to?  Probably the index page
  def destroy
    @pet.destroy
    # We tell rails where to direct us by taking the prefix and adding "_path"
    redirect_to pets_path
  end

  private
  # This is the principle of using Strong Parameters.  The core idea here is we want to make sure we only allow specific information from the user to come through, specifically information we asked for, nothing more.  This prevents nefarious users from providing info that we may not want.  To get a better understanding of this, throw a raise into the create action and see the difference between the regular params and pet params in the little console at the bottom of the page
  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end

  # Our little before action method that sets which pet we want to interact with before certain controller actions
  def set_pet
    @pet = Pet.find(params[:id])
  end
end
